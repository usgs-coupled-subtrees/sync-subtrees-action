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
        #   repo: ${{ github.event.repository.name }}
          defaultRef: ${{ github.event.repository.default_branch }}
        #   runNumber: ${{ github.run_number }}
        #   authToken: ${{ secrets.X_ACCESS_TOKEN }}
          sshKey: ${{ secrets.SSH_PRIVATE_KEY }}
        
