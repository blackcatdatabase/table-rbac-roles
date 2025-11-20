-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  rbac_roles
-- Contract view for [rbac_roles]
CREATE OR REPLACE VIEW vw_rbac_roles AS
SELECT
  id, repo_id, slug, name, description, version, status, created_at, updated_at
FROM rbac_roles;

-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  rbac_roles_coverage
-- Role coverage: permissions per role (allow/deny)
CREATE OR REPLACE VIEW vw_rbac_roles_coverage AS
SELECT
  r.id AS role_id,
  r.slug,
  r.name,
  COUNT(*) FILTER (WHERE rp.effect = ''allow'') AS allows,
  COUNT(*) FILTER (WHERE rp.effect = ''deny'')  AS denies,
  COUNT(*) AS total_rules
FROM rbac_roles r
LEFT JOIN rbac_role_permissions rp ON rp.role_id = r.id
GROUP BY r.id, r.slug, r.name
ORDER BY total_rules DESC, allows DESC;

