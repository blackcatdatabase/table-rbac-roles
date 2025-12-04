-- Auto-generated from schema-views-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  rbac_roles

-- Contract view for [rbac_roles]
CREATE OR REPLACE VIEW vw_rbac_roles AS
SELECT
  id, repo_id, slug, name, description, version, status, created_at, updated_at
FROM rbac_roles;
