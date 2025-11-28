-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  rbac_roles

ALTER TABLE rbac_roles ADD CONSTRAINT fk_rbac_roles_repo FOREIGN KEY (repo_id) REFERENCES rbac_repositories(id) ON DELETE SET NULL;
