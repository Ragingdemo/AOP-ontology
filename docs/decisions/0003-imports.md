# 3. Imports

Status: **open**

## Context
Both sources currently declare their upper-level anchors inline — BFO, IAO, RO, OBI, GO,
CL, UBERON, CHEBI and NCBITaxon terms are asserted locally with a label and sometimes a
parent. This makes the ontology self-contained and buildable offline, at the cost of the
external terms being unversioned local copies that can silently diverge from the source.

The legacy AOPO went the other way and imported ChEBI, HP and BAO whole, unversioned,
which made it unbuildable without network access.

## Current position
`src/ontology/imports/` holds seed term lists and a `make imports` target that generates
MIREOT BOT extracts. The extracts are **not yet wired into the edit files**; the inline
anchors are still authoritative.

## To decide
Whether to switch the sources to `owl:imports` of the generated extracts. Doing so gives
versioned, reviewable external content and is what OBO reviewers expect. It also makes
every build depend on network access to the OBO PURLs and enlarges the artefacts.

Until this is decided, keep the seed lists in step with the inline anchors by hand.
