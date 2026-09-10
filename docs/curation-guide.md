# Curation guide

## Where a term goes
Core if it is true of adverse outcome pathways in general; the AOP-Wiki module if it
exists because AOP-Wiki records it that way. When unsure, put it in the module — moving a
term from module to core later is cheap, the reverse breaks core's reusability claim.

## Adding a term
1. Take the next free identifier from your range in `src/ontology/aopo-idranges.owl`,
   respecting the block convention: classes 0000001–0099999, object properties
   0100000–0199999, data properties 0200000–0299999.
2. Add `rdfs:label` and an `IAO:0000115` definition. A definition is a genus-differentia
   sentence, not a restatement of the label.
3. Give it a named superclass. Orphan classes are a blocking QC failure.
4. `make -C src/ontology test` before opening a PR.

## Labels
Classes and properties use snake_case, enforced by `qc-label-style.sparql`. The value
individuals under `aopo/value/` are exempt: their labels reproduce AOP-Wiki display
strings verbatim and must keep matching them character for character.

## Never
- Edit the root `aopo*.owl` / `.obo` / `.json` artefacts. They are generated. The two
  editable files are `src/ontology/aopo-edit.owl` and
  `src/ontology/components/aopo-core.owl`; everything else with a `.owl` extension is
  build output.
- Assert `owl:equivalentClass` to the root of an imported ontology.
- Reference the legacy `http://aopkb.org/aop_ontology#` namespace in an axiom. Legacy
  correspondences go in `mappings/`.
- Delete a released term. Deprecate it with `owl:deprecated` and `IAO:0100001`.

## Commits
Conventional commits, scoped: `feat(aopwiki):`, `fix(core):`, `docs:`, `chore(build):`.
The release version is derived from commit types, so a mislabelled commit ships a wrong
version number.
