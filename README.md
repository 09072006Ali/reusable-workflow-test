# reusable-workflow-test

A test repository for GitHub Actions **reusable workflows**.

- `.github/workflows/reusable-test.yml` — a reusable workflow triggered via `workflow_call` (with inputs and outputs).
- `.github/workflows/ci.yml` — calls the reusable workflow for two different environments.
- `scripts/test.sh` — a simple test script.

## Usage from another repository

```yaml
jobs:
  test:
    uses: 09072006Ali/reusable-workflow-test/.github/workflows/reusable-test.yml@main
    with:
      environment: prod
      greeting: "Hello!"
```

> Note: this repository must be public to be called from other repositories.
