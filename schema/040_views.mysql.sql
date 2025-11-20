-- Auto-generated from schema-views-mysql.psd1 (map@62c9c93)
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

-- Auto-generated from schema-views-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  rbac_roles_coverage
-- Role coverage: permissions per role (allow/deny)
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_rbac_roles_coverage AS
SELECT
  r.id AS role_id,
  r.slug,
  r.name,
  SUM(CASE WHEN rp.effect = 'allow' THEN 1 ELSE 0 END) AS allows,
  SUM(CASE WHEN rp.effect = 'deny'  THEN 1 ELSE 0 END) AS denies,
  COUNT(rp.permission_id) AS total_rules
FROM rbac_roles r
LEFT JOIN rbac_role_permissions rp ON rp.role_id = r.id
GROUP BY r.id, r.slug, r.name
ORDER BY total_rules DESC, allows DESC;

