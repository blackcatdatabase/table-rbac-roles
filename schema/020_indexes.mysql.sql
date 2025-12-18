-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  rbac_roles

CREATE INDEX idx_rbac_roles_repo ON rbac_roles (repo_id);

CREATE INDEX idx_rbac_roles_status ON rbac_roles (status);
