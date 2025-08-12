# Status

| Site                                                 |                                                                                                    Status |
|------------------------------------------------------|----------------------------------------------------------------------------------------------------------:|
| https://github.com/usgs-coupled-subtrees/iphreeqc    | ![workflow](https://github.com/usgs-coupled-subtrees/iphreeqc/actions/workflows/subtree.yml/badge.svg)    |
| https://github.com/usgs-coupled-subtrees/iphreeqccom | ![workflow](https://github.com/usgs-coupled-subtrees/iphreeqccom/actions/workflows/subtree.yml/badge.svg) |
| https://github.com/usgs-coupled-subtrees/phast3      |      ![workflow](https://github.com/usgs-coupled-subtrees/phast3/actions/workflows/subtree.yml/badge.svg) |
| https://github.com/usgs-coupled-subtrees/phreeqc     |     ![workflow](https://github.com/usgs-coupled-subtrees/phreeqc/actions/workflows/subtree.yml/badge.svg) |
| https://github.com/usgs-coupled-subtrees/phreeqc3    |    ![workflow](https://github.com/usgs-coupled-subtrees/phreeqc3/actions/workflows/subtree.yml/badge.svg) |
| https://github.com/usgs-coupled-subtrees/phreeqci    | ![workflow](https://github.com/usgs-coupled-subtrees/phreeqci/actions/workflows/subtree.yml/badge.svg)    |
| https://github.com/usgs-coupled-subtrees/phreeqcrm   |   ![workflow](https://github.com/usgs-coupled-subtrees/phreeqcrm/actions/workflows/subtree.yml/badge.svg) |
| https://github.com/usgs-coupled-subtrees/vs2di       |   ![workflow](https://github.com/usgs-coupled-subtrees/phreeqcrm/actions/workflows/subtree.yml/badge.svg) |
| https://github.com/usgs-coupled-subtrees/vs2drt      | ![workflow](https://github.com/usgs-coupled-subtrees/vs2drt/actions/workflows/subtree.yml/badge.svg)      |
| https://github.com/usgs-coupled-subtrees/wphast      |      ![workflow](https://github.com/usgs-coupled-subtrees/wphast/actions/workflows/subtree.yml/badge.svg) |


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
      - uses: usgs-coupled-subtrees/sync-subtrees-action@main
        with:
          dryRun: true
          testMerge: false
          repository_name: ${{ github.event.repository.name }}
          default_branch: ${{ github.event.repository.default_branch }}
          run_number: ${{ github.run_number }}
          ssh_private_key: ${{ secrets.SSH_PRIVATE_KEY }}
        
