# Lint Subtrees GitHub Action

This action validates `.github/subtrees.json` structure and ensures push access to listed remote URLs via SSH.

## Inputs

| Name             | Description                                 | Required |
|------------------|---------------------------------------------|----------|
| `ssh-private-key`| SSH private key for validating push access  | ✅ Yes   |

## Example

```yaml
jobs:
  lint-subtrees:
    runs-on: ubuntu-latest
    steps:
      - uses: usgs-coupled-subtrees/sync-subtrees-action/lint-subtrees/@main
        with:
          ssh-private-key: ${{ secrets.SSH_PRIVATE_KEY }}
