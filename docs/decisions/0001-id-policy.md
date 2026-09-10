# 1. ID policy

Status: accepted

## Context
The legacy AOPO at `http://aopkb.org/aop_ontology#` uses label-derived identifiers
(`^[A-Za-z_]+$`) with inconsistent conventions, and those IRIs are consumed directly by
AOP-Wiki RDF. This rewrite uses numeric identifiers under `purl.obolibrary.org/obo/AOPO_`.

## Decision
Seven-digit numeric identifiers under `purl.obolibrary.org/obo/AOPO_`, allocated from
`src/ontology/aopo-idranges.owl`. Identifiers already assigned by the migration on this
branch (AOPO_0000001–AOPO_0000223) are **inherited unchanged**, including where an
object property sits among class identifiers.

New terms in the rewrite happen to use 0100000+ for object properties and 0200000+ for
data properties. That is a habit, not a rule: the existing ID space is flat and imposing
a partition retroactively would mean changing IRIs that are already assigned.

Labels are mutable; identifiers are not.

## Consequences
- The `aopo` ID space must be reserved through an OBO Foundry new-ontology request before
  any `AOPO_` PURL is published or cited. Until then the artefacts carry provisional,
  non-resolving IRIs and this is stated in the README.
- 213 inherited identifiers are not yet represented in the rewrite. They stay reserved
  until each is re-modelled or deprecated — see `docs/term-backlog.md`.
- The rewrite is not IRI-compatible with anything consuming the legacy namespace. See
  decision 4.
