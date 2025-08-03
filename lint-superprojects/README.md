# Lint Superprojects GitHub Action

This GitHub Action validates the structure of `.github/superprojects.json` and ensures it meets required schema constraints.

## What it does

- Checks that `.github/superprojects.json` is valid JSON.
- Ensures there is exactly one top-level object.
- Verifies the presence of a `superprojects` key.
- Confirms that `superprojects` is an array of strings.

## Inputs

| Name              | Description                                         | Required |
|-------------------|-----------------------------------------------------|----------|
| `ssh-private-key` | SSH private key for validating push access (future) | ✅ Yes   |

## Example Usage

```yaml
jobs:
  lint-superprojects:
    runs-on: ubuntu-latest
    steps:
      - uses: usgs-coupled-subtrees/sync-subtrees-action/lint-superprojects/@main
        with:
          ssh-private-key: ${{ secrets.SSH_PRIVATE_KEY }}
```

## Output

- Fails the workflow if `.github/superprojects.json` is missing or invalid.
- Prints a success message if validation passes.

## License

[MIT](../LICENSE)