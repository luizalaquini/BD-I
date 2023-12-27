

-- ========================================================================
-- 2PL conservative
--
-- criado por: 
-- Dionatas Brito 2019202307
-- Luiza Laquini  2019107786
-- ========================================================================

WITH LockStatus AS (
  SELECT
    "#t" AS transaction_id,
    MAX(CASE WHEN op IN ('read_lock', 'write_lock') THEN time END) AS last_lock_time,
    MIN(CASE WHEN op IN ('read_item', 'write_item') THEN time ELSE 999999 END) AS first_read_or_write
  FROM
    "Schedule"
  GROUP BY
    "#t"
)
SELECT CASE WHEN last_lock_time < first_read_or_write THEN 1 ELSE 0 END AS "RESP"
FROM
  LockStatus;
