-- Auto-generated from schema-views-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  rbac_roles

-- Contract view for [rbac_roles]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_rbac_roles AS
SELECT
  id,
  repo_id,
  slug,
  name,
  description,
  version,
  status,
  created_at,
  updated_at
FROM rbac_roles;
