-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  rbac_roles

CREATE INDEX idx_rbac_roles_repo ON rbac_roles (repo_id);

CREATE INDEX idx_rbac_roles_status ON rbac_roles (status);
