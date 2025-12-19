-- Auto-generated from schema-views-mysql.yaml (map@sha1:39CF23914A48753BF55EEB1F38DDBA21AB1DBBB7)
-- engine: mysql
-- table:  rewrap_jobs

-- Contract view for [rewrap_jobs]
-- Adds helpers: is_done, is_running.
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_rewrap_jobs AS
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
  (status = 'done')    AS is_done,
  (status = 'running') AS is_running
FROM rewrap_jobs;
