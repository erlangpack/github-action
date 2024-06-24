# ErlangPack GitHub Action

Keeping our packages up to date on Hex.pm is something we all forget too easily. This GitHub Action publishes your code
to Hex.pm automatically using [Rebar3](https://rebar3.org). This is most useful when you tag your repository.

## Usage

1. First, create a key on your [Hex.pm dashboard](https://hex.pm/dashboard/keys).
   
2. Next, add the key from step 1 to your GitHub repository’s secrets. Call it `HEX_API_KEY`.
   
3. Finally, use this GitHub Action in your workflow:

    ```yaml
    on:
      push:
        tags:
          - '*'

    jobs:
      publish:
        runs-on: ubuntu-latest
        steps:
          - name: Check out
            uses: actions/checkout@v3

          - name: Publish to Hex.pm
            uses: erlangpack/github-action@v3
            env:
              HEX_API_KEY: ${{ secrets.HEX_API_KEY }}
    ```
