-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-11-27T15:35:35Z)
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
