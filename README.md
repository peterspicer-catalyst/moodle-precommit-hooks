# Pre-commit hooks to help with Moodle development

While some are generic, these are primarily designed to help with Moodle development,
using the [pre-commit](http://pre-commit.com/#new-hooks) git hook framework.

# Setup

See (Adding pre-commit plugins to your project)[https://pre-commit.com/#adding-pre-commit-plugins-to-your-project]

# Supported hooks

## php-debug-vardump

```yaml
- repo: https://github.com/peterspicer-catalyst/moodle-precommit-hooks
  rev: master
  hooks:
  - id: php-debug-vardump
```

A bash script to look for calls to var_dump and flag these as failures. If you happen to name a method `var_dump`
in your class, that will be flagged.