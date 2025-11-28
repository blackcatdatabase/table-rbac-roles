-- Auto-generated from schema-views-postgres.psd1 (map@mtime:2025-11-27T15:36:13Z)
-- engine: postgres
-- table:  rbac_roles

-- Contract view for [rbac_roles]
CREATE OR REPLACE VIEW vw_rbac_roles AS
SELECT
  id, repo_id, slug, name, description, version, status, created_at, updated_at
FROM rbac_roles;
