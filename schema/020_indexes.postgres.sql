-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  rbac_roles

CREATE INDEX IF NOT EXISTS idx_rbac_roles_repo ON rbac_roles (repo_id);

CREATE INDEX IF NOT EXISTS idx_rbac_roles_status ON rbac_roles (status);
