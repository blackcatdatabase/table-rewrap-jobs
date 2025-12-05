-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  rewrap_jobs

ALTER TABLE rewrap_jobs ADD CONSTRAINT fk_rewrap_kw FOREIGN KEY (key_wrapper_id) REFERENCES key_wrappers(id) ON DELETE CASCADE;

ALTER TABLE rewrap_jobs ADD CONSTRAINT fk_rewrap_tk1 FOREIGN KEY (target_kms1_key_id) REFERENCES kms_keys(id) ON DELETE SET NULL;

ALTER TABLE rewrap_jobs ADD CONSTRAINT fk_rewrap_tk2 FOREIGN KEY (target_kms2_key_id) REFERENCES kms_keys(id) ON DELETE SET NULL;
