-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  rewrap_jobs
CREATE INDEX IF NOT EXISTS idx_rewrap_status_sched ON rewrap_jobs (status, scheduled_at);

CREATE INDEX IF NOT EXISTS idx_rewrap_kw ON rewrap_jobs (key_wrapper_id);
