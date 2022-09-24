# release-versions

![gh-test-status]![gh-release-status]

## Convenience Github action to create release versions from a tag

A simple action to break a tag into multiple versions

i.e.

tag 1.2.3 becomes

1, 1.2 and 1.2.3

or v1, v1.2 and v1.2.3 if a version prefix of v is provided

### Inputs

### `tag`

**Required** The tag to convert

### `prefix`

**Optional** Version prefix

Example usage:

```yaml
jobs:
  deploy_versions:
    runs-on: ubuntu-latest
    steps:

      - name: create tag
        id:tag
      ... add a tag

      - name: get versions
        uses: rusty-actions/release-versions@v1
        with:
          tag: "${{ steps.tag.outputs.tag }}"
          prefix: "v"
```

<!-- Badge links -->

[gh-test-status]: https://github.com/rusty-actions/release-versions/actions/workflows/test.yml/badge.svg
[gh-release-status]: https://github.com/rusty-actions/release-versions/actions/workflows/release.yml/badge.svg
