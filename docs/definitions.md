# rbac_roles

RBAC role definitions synchronized from repositories.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| description | TEXT | YES |  | Optional description. |
| id | BIGINT | NO |  | Surrogate primary key. |
| name | VARCHAR(200) | NO |  | Human name of the role. |
| repo_id | BIGINT | YES |  | Owning repository (FK rbac_repositories.id). |
| slug | VARCHAR(120) | NO |  | Stable role slug. |
| status | ENUM('active','deprecated','archived') | NO | active | Lifecycle status. (enum: active, deprecated, archived) |
| updated_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Last update timestamp (UTC). |
| version | INT | NO | 1 | Version number from the repo. |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_rbac_roles_repo_slug | repo_id, slug |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_rbac_roles_repo | repo_id | CREATE INDEX idx_rbac_roles_repo ON rbac_roles (repo_id) |
| idx_rbac_roles_status | status | CREATE INDEX idx_rbac_roles_status ON rbac_roles (status) |
| uq_rbac_roles_repo_slug | repo_id,slug | UNIQUE KEY uq_rbac_roles_repo_slug (repo_id, slug) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_rbac_roles_repo | repo_id | rbac_repositories(id) | ON DELETE SET |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_rbac_roles_repo_slug | repo_id, slug |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_rbac_roles_repo | repo_id | CREATE INDEX IF NOT EXISTS idx_rbac_roles_repo ON rbac_roles (repo_id) |
| idx_rbac_roles_status | status | CREATE INDEX IF NOT EXISTS idx_rbac_roles_status ON rbac_roles (status) |
| uq_rbac_roles_repo_slug | repo_id,slug | CONSTRAINT uq_rbac_roles_repo_slug UNIQUE (repo_id, slug) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_rbac_roles_repo | repo_id | rbac_repositories(id) | ON DELETE SET |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_rbac_roles | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_rbac_roles | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |
