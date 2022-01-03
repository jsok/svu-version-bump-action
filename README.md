# svu (Semantic Version Util) action

GitHub Action to calculate next version using [svu](https://github.com/caarlos0/svu).

## Inputs

## `bump`

What kind of version bump to perform.
Defaults to `next`, but also supports: `major`, `minor` or `patch`.

## `pattern`

**Optional**: Invokes `svu --pattern`'s behaviour, default to `*`.

## `prefix`

**Optional**: Invokes `svu --prefix`'s behaviour, defaults to `v`.

## Outputs

## `version`

The next calculated version number.

## `version-without-prefix`

The next calculated version number without the prefix.

## Example usage

```yaml
uses: jsok/svu-version-bump-action@v1
with:
  bump: 'next'
```

## Custom pattern and prefix

```yaml
uses: jsok/svu-version-bump-action@v1
with:
  bump: 'next'
  pattern: 'foo/*'
  prefix: 'foo/v'
```
