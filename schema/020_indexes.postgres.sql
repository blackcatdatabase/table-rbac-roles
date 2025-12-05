-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  rbac_roles

CREATE INDEX IF NOT EXISTS idx_rbac_roles_repo ON rbac_roles (repo_id);

CREATE INDEX IF NOT EXISTS idx_rbac_roles_status ON rbac_roles (status);
