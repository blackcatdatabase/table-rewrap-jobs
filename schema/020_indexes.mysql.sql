-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  rewrap_jobs

CREATE INDEX idx_rewrap_status_sched ON rewrap_jobs (status, scheduled_at);

CREATE INDEX idx_rewrap_kw ON rewrap_jobs (key_wrapper_id);
