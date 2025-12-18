-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  rbac_roles

ALTER TABLE rbac_roles ADD CONSTRAINT fk_rbac_roles_repo FOREIGN KEY (repo_id) REFERENCES rbac_repositories(id) ON DELETE SET NULL;
