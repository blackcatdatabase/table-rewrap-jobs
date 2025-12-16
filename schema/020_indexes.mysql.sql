-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  rewrap_jobs

CREATE INDEX idx_rewrap_status_sched ON rewrap_jobs (status, scheduled_at);

CREATE INDEX idx_rewrap_kw ON rewrap_jobs (key_wrapper_id);
