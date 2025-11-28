-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  rbac_roles

ALTER TABLE rbac_roles ADD CONSTRAINT fk_rbac_roles_repo FOREIGN KEY (repo_id) REFERENCES rbac_repositories(id) ON DELETE SET NULL;
