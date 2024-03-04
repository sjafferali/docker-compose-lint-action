# Docker Compose Lint Action
A github action that checks the syntax if your docker compose files.

## Inputs

### compose-file

**Optional** The path to your docker-compose.yml file. Default `"./docker-compose.yml".


## Example usage

```yaml
uses: sjafferali/docker-compose-lint-action@v0.1.0
with:
  compose-file: './docker-compose.yml'
```
