-- Auto-generated from schema-map-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  rbac_roles

ALTER TABLE rbac_roles ADD CONSTRAINT fk_rbac_roles_repo FOREIGN KEY (repo_id) REFERENCES rbac_repositories(id) ON DELETE SET NULL;
