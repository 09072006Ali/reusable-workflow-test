# reusable-workflow-test

GitHub Actions **reusable workflow** üçün test reposu.

- `.github/workflows/reusable-test.yml` — `workflow_call` ilə çağırılan reusable workflow (inputs + outputs).
- `.github/workflows/ci.yml` — reusable workflow-u iki fərqli mühitlə çağırır.
- `scripts/test.sh` — sadə test skripti.

## Başqa repodan istifadə

```yaml
jobs:
  test:
    uses: 09072006Ali/reusable-workflow-test/.github/workflows/reusable-test.yml@main
    with:
      environment: prod
      greeting: "Salam!"
```

> Qeyd: başqa repodan çağırmaq üçün bu repo public olmalıdır.
