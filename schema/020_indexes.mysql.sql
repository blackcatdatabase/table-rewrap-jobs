-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  rewrap_jobs

CREATE INDEX idx_rewrap_status_sched ON rewrap_jobs (status, scheduled_at);

CREATE INDEX idx_rewrap_kw ON rewrap_jobs (key_wrapper_id);
