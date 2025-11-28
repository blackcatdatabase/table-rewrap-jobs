-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  rewrap_jobs

CREATE INDEX idx_rewrap_status_sched ON rewrap_jobs (status, scheduled_at);

CREATE INDEX idx_rewrap_kw ON rewrap_jobs (key_wrapper_id);
