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

## `initial`

If this is not set, the action will fail if the current version cannot be determined.
Otherwise this SemVer will be used as the initial version.

## Outputs

## `version`

The next calculated version number.

## Example usage

```yaml
uses: jsok/svu-action@v1
with:
  bump: 'next'
```

## Set an initial version

```yaml
uses: jsok/svu-action@v1
with:
  bump: 'next'
  initial: '0.0.1'
```

## Custom pattern and prefix

```yaml
uses: jsok/svu-action@v1
with:
  bump: 'next'
  pattern: 'foo/*'
  prefix: 'foo/v'
  initial: '0.0.1'
```
