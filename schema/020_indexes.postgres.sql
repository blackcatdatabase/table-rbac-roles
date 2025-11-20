-- Auto-generated from schema-map-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  rbac_roles
CREATE INDEX IF NOT EXISTS idx_rbac_roles_repo ON rbac_roles (repo_id);

CREATE INDEX IF NOT EXISTS idx_rbac_roles_status ON rbac_roles (status);
