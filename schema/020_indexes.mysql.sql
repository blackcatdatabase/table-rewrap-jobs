-- Auto-generated from schema-map-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  rewrap_jobs

CREATE INDEX idx_rewrap_status_sched ON rewrap_jobs (status, scheduled_at);

CREATE INDEX idx_rewrap_kw ON rewrap_jobs (key_wrapper_id);
