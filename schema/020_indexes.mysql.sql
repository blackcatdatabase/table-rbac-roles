-- Auto-generated from schema-map-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  rbac_roles

CREATE INDEX idx_rbac_roles_repo ON rbac_roles (repo_id);

CREATE INDEX idx_rbac_roles_status ON rbac_roles (status);
