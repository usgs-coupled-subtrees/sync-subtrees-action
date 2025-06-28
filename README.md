# sync-subtrees-action

A reusable GitHub Action to sync Git subtrees based on `.github/subtrees.json`.

## Usage

```yaml
jobs:
  sync-subtrees:
    runs-on: ubuntu-latest
    container:
      image: buildpack-deps:bionic-scm
    steps:
      - uses: usgs-coupled/sync-subtrees-action@main
        with:
          dryRun: true
          testMerge: false
          repository_name: ${{ github.event.repository.name }}
          default_branch: ${{ github.event.repository.default_branch }}
          run_number: ${{ github.run_number }}
          ssh_private_key: ${{ secrets.SSH_PRIVATE_KEY }}
        
