# rewrap_jobs

Key rewrap tasks that move ciphertexts to new key wrappers/KMS keys.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| attempts | INT | NO | 0 | Retry counter. |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| finished_at | DATETIME(6) | YES |  | Processing completion timestamp. |
| id | BIGINT | NO |  | Surrogate primary key. |
| key_wrapper_id | BIGINT | NO |  | Wrapper being rewrapped (FK key_wrappers.id). |
| last_error | TEXT | YES |  | Last error message observed. |
| scheduled_at | DATETIME(6) | YES |  | Scheduled start time. |
| started_at | DATETIME(6) | YES |  | Processing start timestamp. |
| status | ENUM('pending','running','done','failed') | NO | pending | Job status flag. (enum: pending, running, done, failed) |
| target_kms1_key_id | BIGINT | YES |  | Target primary KMS key. |
| target_kms2_key_id | BIGINT | YES |  | Target secondary KMS key. |

## Engine Details

### mysql

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_rewrap_kw | key_wrapper_id | CREATE INDEX idx_rewrap_kw ON rewrap_jobs (key_wrapper_id) |
| idx_rewrap_status_sched | status,scheduled_at | CREATE INDEX idx_rewrap_status_sched ON rewrap_jobs (status, scheduled_at) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_rewrap_kw | key_wrapper_id | key_wrappers(id) | ON DELETE CASCADE |
| fk_rewrap_tk1 | target_kms1_key_id | kms_keys(id) | ON DELETE SET |
| fk_rewrap_tk2 | target_kms2_key_id | kms_keys(id) | ON DELETE SET |

### postgres

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_rewrap_kw | key_wrapper_id | CREATE INDEX IF NOT EXISTS idx_rewrap_kw ON rewrap_jobs (key_wrapper_id) |
| idx_rewrap_status_sched | status,scheduled_at | CREATE INDEX IF NOT EXISTS idx_rewrap_status_sched ON rewrap_jobs (status, scheduled_at) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_rewrap_kw | key_wrapper_id | key_wrappers(id) | ON DELETE CASCADE |
| fk_rewrap_tk1 | target_kms1_key_id | kms_keys(id) | ON DELETE SET |
| fk_rewrap_tk2 | target_kms2_key_id | kms_keys(id) | ON DELETE SET |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_rewrap_jobs | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_rewrap_jobs | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |
