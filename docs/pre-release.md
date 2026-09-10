# Pre-release status

The artefacts here are a **pre-release**: committed and usable, but carrying no version
IRI and no tag. The term set is still being built out; the final version follows once it
is complete. Nothing here should be cited, imported by another ontology, or used as a
stable identifier source until then.

## What this means mechanically

- The ODK harness is authoritative. Build and test with `sh run.sh make test` and
  `sh run.sh make prepare_release` from `src/ontology/`, as ODK generated it.
- No release artefacts are committed and `prepare_release` has not been run. Running it
  stamps version IRIs and produces the release — do not until the criteria below are met.
- The custom checks in `src/ontology/aopo.Makefile` run as part of ODK's normal
  `sparql_test`, so they fire on every build without a parallel QC system.

## Exit criteria — what has to be true before the first release

Fill in the term-coverage line yourselves; the rest are already tracked.

1. **Term coverage.** 213 identifiers migrated from the legacy ontology are not yet
   represented in the rewrite. Every one is either re-modelled or explicitly deprecated —
   see `docs/term-backlog.md`. This is the item that is actually blocking.
2. **Known issues closed** (`docs/known-issues.md`): duplicate confidence labels and the
   five properties without definitions. `aopo-missing-definition` is written but left out
   of `SPARQL_VALIDATION_CHECKS` in `src/ontology/aopo.Makefile` until then.
3. **Decision 3 resolved** — inline anchors or generated MIREOT imports. Releasing with
   unversioned inline copies of BFO/UBERON/CL terms means the first release cannot state
   which version of those ontologies it was built against.
4. **Decision 4 resolved** — the `aopo` prefix question. This also gates
   `aopo-aopwiki.owl`, which imports the core PURL and therefore does not load at all
   until that PURL resolves. Publishing artefacts with
   `purl.obolibrary.org/obo/AOPO_` IRIs before the ID space is reserved creates identifiers
   that do not resolve and cannot be withdrawn once someone has cited them.
5. **Mappings populated** — `mappings/aopo-aopkb.sssom.tsv` currently holds three
   placeholder rows marked UNVERIFIED.

## Version numbering when you do release

semantic-release derives the first version from commit history and will produce `1.0.0`
by default. If the first release should signal that the ontology is still settling, set
the starting point deliberately — either tag `v0.1.0` by hand before the first automated
run, or use dated versions (`2026-10-01`) as PBPKO does and skip semver entirely. Decide
before the first run; changing scheme afterwards is disruptive for consumers.

Conventional commits are worth keeping from now regardless, because the changelog for the
first release is generated from the commits you are making today.
