-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  rewrap_jobs

CREATE TABLE IF NOT EXISTS rewrap_jobs (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  key_wrapper_id BIGINT UNSIGNED NOT NULL,
  target_kms1_key_id BIGINT UNSIGNED NULL,
  target_kms2_key_id BIGINT UNSIGNED NULL,
  scheduled_at DATETIME(6) NULL,
  started_at DATETIME(6) NULL,
  finished_at DATETIME(6) NULL,
  status ENUM('pending','running','done','failed') NOT NULL DEFAULT 'pending',
  attempts INT UNSIGNED NOT NULL DEFAULT 0,
  last_error TEXT NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
