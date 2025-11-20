<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – rewrap_jobs

Key rewrap tasks that move ciphertexts to new key wrappers/KMS keys.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| key_wrapper_id | BIGINT | NO | — | Wrapper being rewrapped (FK key_wrappers.id). |  |
| target_kms1_key_id | BIGINT | YES | — | Target primary KMS key. |  |
| target_kms2_key_id | BIGINT | YES | — | Target secondary KMS key. |  |
| scheduled_at | TIMESTAMPTZ(6) | YES | — | Scheduled start time. |  |
| started_at | TIMESTAMPTZ(6) | YES | — | Processing start timestamp. |  |
| finished_at | TIMESTAMPTZ(6) | YES | — | Processing completion timestamp. |  |
| status | TEXT | NO | 'pending' | Job status flag. | enum: pending, running, done, failed |
| attempts | INTEGER | NO | 0 | Retry counter. |  |
| last_error | TEXT | YES | — | Last error message observed. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |