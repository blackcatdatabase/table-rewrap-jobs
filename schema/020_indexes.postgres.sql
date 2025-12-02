-- Auto-generated from schema-map-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  rewrap_jobs

CREATE INDEX IF NOT EXISTS idx_rewrap_status_sched ON rewrap_jobs (status, scheduled_at);

CREATE INDEX IF NOT EXISTS idx_rewrap_kw ON rewrap_jobs (key_wrapper_id);
