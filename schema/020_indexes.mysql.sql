-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  rbac_roles

CREATE INDEX idx_rbac_roles_repo ON rbac_roles (repo_id);

CREATE INDEX idx_rbac_roles_status ON rbac_roles (status);
