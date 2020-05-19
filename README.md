# ErlangPack GitHub Action

Keeping our packages up to date on Hex.pm is something we all forget too easily. This GitHub Action publishes your code
to Hex.pm automatically. This is most useful when you tag your repository.

## Usage

1. First, create a key on your [Hex.pm dashboard](https://hex.pm/dashboard/keys). Make sure to give it write
   permissions.
   
2. Next, use this GitHub Action in your workflow:    

    ```yaml
    on:
      push:
        tags:
        - '*'
    uses: erlangpack/github-action@v1
    with:
      hex-api-key: ${{ secrets.HEX_API_KEY }}    
    ```

## Inputs

### `hex-api-key`

**Required** Your Hex API with write permissions. Make sure never to expose this key, so add it as a secret. 
