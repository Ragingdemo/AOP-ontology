# 2. Core / AOP-Wiki module split

Status: accepted

## Context
The AOP framework and the AOP-Wiki record model are not the same thing. Conflating them
produces an ontology that cannot be reused outside the Wiki and cannot be maintained
independently of Wiki schema changes.

## Decision
Two edit files. `components/aopo-core.owl` is domain-agnostic. `aopo-edit.owl` is the
AOP-Wiki module and imports core, refining core classes where the Wiki is more specific.
Both ship as products: `aopo-core.owl` alone and `aopo.owl` merged.

## Consequences
- A change to the Wiki schema touches only the module.
- Core must stay free of Wiki-specific vocabulary. The QC suite cannot enforce this;
  review does.
- Consumers who want only the framework take `aopo-core.owl`, which is why it is a
  released product rather than an internal component.
- Core is wired in as an ODK **component** (`src/ontology/components/aopo-core.owl`),
  resolved through `catalog-v001.xml`. ODK merges it into the release products.
- Shipping the module as its own artefact (`aopo-aopwiki.owl`, importing core rather than
  merging it) is possible but not configured here: it needs a `components` entry in
  `aopo-odk.yaml` and an ODK regeneration, and the artefact does not load at all until the
  `aopo` PURLs resolve. Revisit at release time.
- The asymmetry is intended. Core stands alone; the module does not.
