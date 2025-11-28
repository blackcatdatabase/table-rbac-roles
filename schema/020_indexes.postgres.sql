-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  rbac_roles

CREATE INDEX IF NOT EXISTS idx_rbac_roles_repo ON rbac_roles (repo_id);

CREATE INDEX IF NOT EXISTS idx_rbac_roles_status ON rbac_roles (status);
