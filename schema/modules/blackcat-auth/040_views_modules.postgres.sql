-- Auto-generated from feature-modules-postgres.yaml (map@sha1:E21F17850CEF9511C760F725ABF4C7D45DC351E4)
-- engine: postgres
-- table:  rbac_roles_coverage

CREATE OR REPLACE VIEW vw_rbac_roles_coverage AS
SELECT
  rr.id   AS role_id,
  rr.slug AS role_slug,
  COUNT(DISTINCT rp.permission_id) AS permissions_count,
  COUNT(DISTINCT ur.user_id)       AS users_count
FROM rbac_roles rr
LEFT JOIN rbac_role_permissions rp ON rp.role_id = rr.id
LEFT JOIN rbac_user_roles ur       ON ur.role_id = rr.id AND ur.status = 'active'
GROUP BY rr.id, rr.slug;
