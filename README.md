# ErlangPack GitHub Action

Keeping our packages up to date on Hex.pm is something we all forget too easily. This GitHub Action publishes your code
to Hex.pm automatically. This is most useful when you tag your repository.

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
        name: Publish ${{ github.ref }} to Hex ${{ matrix.otp_version }}
        runs-on: ${{ matrix.os }}

      strategy:
        matrix:
          otp_version: [24.0.5]
          os: [ubuntu-latest]

      steps:
          - name: Check out
            uses: actions/checkout@v3

          - name: Publish to Hex.pm
            uses: erlangpack/github-action@v3
            env:
              HEX_API_KEY: ${{ secrets.HEX_API_KEY }}
    ```
