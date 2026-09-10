module.exports = {
  extends: ['@commitlint/config-conventional'],
  rules: {
    'scope-enum': [2, 'always', ['core', 'aopwiki', 'imports', 'mappings', 'build', 'docs', 'qc']]
  }
};
