<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – rbac_roles

RBAC role definitions synchronized from repositories.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| repo_id | BIGINT | YES | — | Owning repository (FK rbac_repositories.id). |  |
| slug | VARCHAR(120) | NO | — | Stable role slug. |  |
| description | TEXT | YES | — | Optional description. |  |
| version | INTEGER | NO | 1 | Version number from the repo. |  |
| status | TEXT | NO | 'active' | Lifecycle status. | enum: active, deprecated, archived |
| updated_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Last update timestamp (UTC). |  |