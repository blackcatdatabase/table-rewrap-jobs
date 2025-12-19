-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  rewrap_jobs

ALTER TABLE rewrap_jobs ADD CONSTRAINT fk_rewrap_kw FOREIGN KEY (key_wrapper_id) REFERENCES key_wrappers(id) ON DELETE CASCADE;

ALTER TABLE rewrap_jobs ADD CONSTRAINT fk_rewrap_tk1 FOREIGN KEY (target_kms1_key_id) REFERENCES kms_keys(id) ON DELETE SET NULL;

ALTER TABLE rewrap_jobs ADD CONSTRAINT fk_rewrap_tk2 FOREIGN KEY (target_kms2_key_id) REFERENCES kms_keys(id) ON DELETE SET NULL;
