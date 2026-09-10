# 4. Relationship to the legacy AOPO

Status: **open**

## Context
`DataSciBurgoon/aop-ontology` remains the ontology that AOP-Wiki RDF consumes. Measured on
the current master: 103 classes, 50 object properties, 93 named individuals, no version
IRI, no ontology-level metadata, and not OWL 2 DL (42 undeclared annotation properties,
15 undeclared classes, 3 illegal punnings). It is Apache-2.0, which the OBO Foundry does
not accept.

This repository is a rewrite. It does not use legacy IRIs directly, but it is **not**
independent of them: the `aopo-edit.owl` previously on this branch had already migrated
223 legacy terms into `AOPO_` identifiers with `AOPKB:` xrefs, and the rewrite inherits 8
of those identifiers. The remaining 213 are reserved and tracked in
`docs/term-backlog.md`.

## To decide
1. Whether the legacy ontology is deprecated in favour of this one, or the two coexist.
2. Whether AOP-Wiki RDF migrates. If it does not, this ontology has no consumer for the
   AOP-Wiki module and the module's value is theoretical.
3. Who owns the `aopo` prefix in Bioregistry, which currently points at the legacy repo.
   Two ontologies claiming `aopo:` with incompatible IRI patterns is the worst outcome
   and is avoidable only by agreement, not by tooling.

## Regardless of the outcome
`mappings/aopo-aopkb.sssom.tsv` must be populated with legacy-to-new correspondences.
Without it, nothing built on AOP-Wiki RDF can move to this ontology at all.
