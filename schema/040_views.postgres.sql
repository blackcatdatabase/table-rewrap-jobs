-- Auto-generated from schema-views-postgres.psd1 (map@mtime:2025-11-27T15:36:13Z)
-- engine: postgres
-- table:  rewrap_jobs

-- Contract view for [rewrap_jobs]
-- Adds helpers: is_done, is_running.
CREATE OR REPLACE VIEW vw_rewrap_jobs AS
SELECT
  id,
  key_wrapper_id,
  target_kms1_key_id,
  target_kms2_key_id,
  scheduled_at,
  started_at,
  finished_at,
  status,
  attempts,
  last_error,
  created_at,
  (status = 'done')     AS is_done,
  (status = 'running')  AS is_running
FROM rewrap_jobs;
