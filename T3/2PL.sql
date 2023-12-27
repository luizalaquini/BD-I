
-- ========================================================================
-- 2PL
--
-- criado por: 
-- Dionatas Brito 2019202307
-- Luiza Laquini  2019107786
-- ========================================================================


WITH LockStatus AS (
  SELECT
    "#t" AS transaction_id,
    MAX(CASE WHEN op IN ('read_lock', 'write_lock') THEN time END) AS last_lock_time,
    MIN(CASE WHEN op = 'unlock' THEN time ELSE 999999 END) AS first_unlock_time
  FROM
    "Schedule"
  GROUP BY
    "#t"
)
SELECT COALESCE(CASE WHEN last_lock_time < first_unlock_time THEN 1 ELSE 0 END, 0) AS "RESP"
FROM
  LockStatus;

