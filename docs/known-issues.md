# Known issues

Each entry has a QC check behind it. When an issue is closed, promote its check from
`src/sparql/advisory/` to `src/sparql/` so it becomes blocking.

## 1. Duplicate labels across the two confidence vocabularies

`AOPO_v:high`, `low`, `moderate` and `not_specified` (evidence level, AOPO:0000235) carry
the same `rdfs:label` values as `AOPO_v:qu_high`, `qu_low`, `qu_moderate` and
`qu_not_specified` (quantitative understanding, AOPO:0000236).

The modelling is defensible — the labels are scoped by class — but labels are not unique
across the ontology, so any label-based lookup (OLS, Protégé search, text mining against
AOP-Wiki) resolves them ambiguously, and `robot report` treats it as an error.

*Check:* `duplicate_label`, currently WARN in `src/ontology/report-profile.txt`.
*Fix:* disambiguate one set, e.g. "high (quantitative understanding)", keeping the
AOP-Wiki display string as an `oboInOwl:hasExactSynonym`. Then restore the rule to ERROR.

## 2. ID blocks are a convention the existing ID space does not follow — RESOLVED

`AOPO_0000048` (has_upstream_key_event) and `AOPO_0000026` (has_downstream_key_event) are
object properties with identifiers in the 0000001–0000223 range otherwise occupied by
classes. They are **inherited from the migration already on this branch**, where the ID
space is flat and not partitioned by entity type — `aopo-idranges.owl` allocates
0–999999 to one editor with no type split.

Keeping the inherited identifiers is correct; a term's IRI must not change because a
convention was invented later. The type-partitioned block convention has therefore been
dropped, and the check that enforced it removed.

New terms in the rewrite use 0100000+ for object properties and 0200000+ for data
properties, which is harmless as a habit but is not enforced and is not a rule.

## 3. Five properties without definitions

`AOPO_0100075` to `AOPO_0100079` (applies_to_taxon, applies_to_sex, applies_to_life_stage,
assesses_key_event_relationship, associates_stressor) have labels and `rdfs:comment` but no
`IAO:0000115` definition. They are the newest terms in the module, all marked "NEW ID".

*Check:* `src/sparql/advisory/qc-missing-definition.sparql` (5 violations).

## 4. The delivered aopo-full.ttl was not a build product

The `aopo-full.ttl` supplied before this repository existed was not equal to the merge of
the two sources: it asserted `owl:equivalentClass` where the sources asserted
`rdfs:subClassOf`, and it carried both ontologies' `dc:title` and `rdfs:comment` on a
single ontology IRI — a Protégé export saved after loading both files.

The divergence has since been resolved in favour of the equivalences, which were the
intended modelling (see issue 5). The remaining point stands: full artefacts are build
outputs and are never hand-edited.

## 5. Four classes are deliberate aliases for imported roots — RESOLVED

`biological_process` (AOPO_0000226), `taxonomy` (AOPO_0000230), `cell_term`
(AOPO_0000243) and `organ_term` (AOPO_0000244) are asserted `owl:equivalentClass` to
`GO:0008150`, `NCBITaxon:1`, `CL:0000000` and `UBERON:0001062` respectively.

This is intentional. They are local aliases so that AOPO property ranges carry an
AOPO-namespace class rather than hard-coding the external ontology. The consequence is
that each denotes exactly what the external root denotes — every UBERON anatomical entity
is an `organ_term`, and there is no sense in which the alias is narrower.

Their definitions were rewritten to match. They previously read "the organ or tissue **in
which a key event occurs**" and similar, which asserts a restriction the axiom does not
carry. That contextual meaning belongs on the key event, not on the range class; it now
sits in `rdfs:comment` as a usage note.

`equivalent-to-import-root-violation.sparql` exempts exactly these four IRIs and still
fires on any other equivalence to an imported root, which is almost always a Protégé
"Equivalent To" entry that was meant to be "SubClass Of".

**Open question for review:** an OBO reviewer will ask why these classes exist at all,
since `rdfs:range UBERON:0001062` is equivalent to `rdfs:range AOPO:0000244` and one fewer
term. The answer is portability — the alias can later be redefined as a union or narrowed
without touching every property. Worth deciding before submission whether that is worth
four terms.

**Not changed:** `biological_object` (AOPO_0000227) remains `rdfs:subClassOf
BFO:0000040`. Its definition enumerates several kinds of material entity, so it is a
genuine subclass or a union, not an alias for the BFO root.
