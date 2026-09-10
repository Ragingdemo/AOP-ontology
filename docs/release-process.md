# Release process

The repository follows the PBPKO pattern: ODK builds the artefacts, semantic-release
publishes them. Release artefacts live at the repository root because ODK's
`RELEASEDIR` is `../..`; nothing about that is hand-managed.

## Current state: pre-release

**No release has been cut.** No root artefacts are committed and no version IRI is
stamped. The blocker is term coverage — 213 identifiers from the legacy migration are
still unrepresented (`docs/term-backlog.md`). Read `docs/pre-release.md` for the full
exit criteria.

The release workflow has no push trigger for exactly this reason: it runs only on manual
dispatch with a version typed in by hand.

## How a release happens

1. Commits use conventional commits with a scope (`feat(aopwiki):`, `fix(core):`).
   `commitlint` enforces this through the husky `commit-msg` hook — run `npm install`
   once to activate it. The version number and changelog derive from these messages, so
   a mislabelled commit ships a wrong version.
2. Trigger the Release workflow manually with the version string.
3. It runs `sh run.sh make prepare_release VERSION=<version>`, which is ODK's own
   release pipeline: refresh imports, rebuild components, reason, run the full QC suite,
   generate `base`, `full` and `simple` in owl/obo/json, and copy them to the root.
4. semantic-release then writes `CHANGELOG.md`, commits the artefacts, tags, and creates
   the GitHub release with the artefacts attached.

## Locally

```bash
cd src/ontology
sh run.sh make test              # QC only
sh run.sh make prepare_release   # full pipeline, VERSION defaults to today
```

Both need Docker, since `run.sh` executes inside the ODK image.

## Version numbering — decide before the first run

semantic-release derives the first version from commit history and produces `1.0.0` by
default. PBPKO uses dated versions (`v2026-07-15`) instead and skips semver. Pick one
before the first release: switching scheme afterwards is disruptive for consumers.

## Licensing

`aopo-odk.yaml` and `.zenodo.json` both declare Apache-2.0, inherited from the legacy
AOP-KB ontology. **The OBO Foundry accepts CC0 and CC BY only.** If OBO registration is
the goal, this has to change before submission, and relicensing content derived from the
legacy ontology needs its copyright holder's agreement. Left as Apache-2.0 here rather
than switched silently, because it is not a technical decision.
