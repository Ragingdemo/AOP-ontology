## Customize Makefile settings for aopo
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile

# ----------------------------------------------------------------------------
# Custom SPARQL validation checks.
#
# ODK builds SPARQL_VALIDATION_QUERIES lazily from this variable, so overriding
# it here (aopo.Makefile is included at the end of the generated Makefile) takes
# effect. Each name maps to ../sparql/<name>-violation.sparql.
#
# aopo-missing-definition is deliberately NOT listed: five properties still lack
# definitions. See docs/known-issues.md. Add it once they are written.
# ----------------------------------------------------------------------------
SPARQL_VALIDATION_CHECKS = owldef-self-reference iri-range label-with-iri \
                           multiple-replaced_by dc-properties \
                           equivalent-to-import-root dangling-aopkb \
                           aopo-missing-label aopo-orphan-class aopo-label-style
