# Adverse Outcome Pathway Ontology (AOPO)

## Status: pre-release

The ontology has been rebuilt as a BFO-aligned core (`src/ontology/components/aopo-core.owl`)
plus an AOP-Wiki module (`src/ontology/aopo-edit.owl`). **No version has been released**,
no version IRI is stamped, and no release artefacts are committed.

213 identifiers migrated from the legacy `aopkb.org` ontology are not yet represented in
the rewrite and are reserved — see [`docs/term-backlog.md`](docs/term-backlog.md). The
final version follows once they are re-modelled or deprecated. Read
[`docs/pre-release.md`](docs/pre-release.md) for the full exit criteria and
[`docs/known-issues.md`](docs/known-issues.md) for what QC currently tolerates.

The `AOPO_` PURLs are provisional and do not resolve. Do not cite them yet.


OBO-aligned ontology starter migrated from the legacy [AOP-KB ontology](../aop-ontology/) using the [Ontology Development Kit (ODK)](https://github.com/INCATools/ontology-development-kit).

## Quick start

```bash
# From a path WITHOUT spaces (ODK requirement):
cd aopo/src/ontology
./run.sh make test
./run.sh make all
```

If your checkout path contains spaces, use Docker directly (see [migration-data/MIGRATION.md](../migration-data/MIGRATION.md)).

## Contents

| Path | Description |
|------|-------------|
| `src/ontology/aopo-edit.owl` | Editor ontology (223 terms from AOP-KB) |
| `src/ontology/aopo-odk.yaml` | ODK project configuration |
| `src/ontology/imports/` | Import modules (RO, IAO, ChEBI, HP) |
| `src/metadata/aopo.yml` | OBO PURL configuration template |



## License

