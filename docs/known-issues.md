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

The `aopo-full.ttl` supplied alongside the two sources was not equal to their merge. It
asserted `owl:equivalentClass` between three AOPO classes and the roots of imported
ontologies:

| AOPO class | Asserted equivalent to |
|---|---|
| AOPO:0000230 taxonomy | NCBITaxon:1 |
| AOPO:0000243 cell_term | CL:0000000 |
| AOPO:0000244 organ_term | UBERON:0001062 |

The two edit sources use `rdfs:subClassOf` for the same relationships, which is the correct
intent. Equivalence to an import root makes the AOPO class interchangeable with that root,
so once real UBERON is imported every anatomical entity becomes an `organ_term`.

The stale export is kept at `scripts/aopo-full.protege-export.ttl.orig` for reference and
is not part of the build. `aopo-full.owl` is now generated.

*Check:* `src/sparql/qc-equivalent-to-import-root.sparql` (blocking, currently passing).
