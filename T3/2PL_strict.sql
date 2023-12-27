

-- ========================================================================
-- 2PL strict
--
-- criado por: 
-- Dionatas Brito 2019202307
-- Luiza Laquini  2019107786
-- ========================================================================

WITH LockStatus AS (
  SELECT
    "#t" AS transaction_id,
    "attr" AS "attr",
    MIN(CASE WHEN op = 'write_item' THEN time END) AS first_write,
    MIN(CASE WHEN op IN ('commit', 'abort') THEN time END) AS first_commit_or_abort,
    MIN(CASE WHEN op = 'unlock' THEN time END) AS first_unlock
  FROM
    "Schedule"
  GROUP BY
    "#t", "attr"
), LockStatusFirstCommitOrAbortNotNull AS (
  SELECT "first_commit_or_abort"
  FROM LockStatus
  WHERE "first_commit_or_abort" IS NOT NULL
)
SELECT
  CASE WHEN MAX(LS.first_write) IS NULL OR MAX(LS.first_commit_or_abort) IS NULL OR MAX(LS.first_unlock) IS NULL OR MAX(LS.first_write) < MAX(LS.first_commit_or_abort) AND MAX(LS.first_commit_or_abort) < MAX(LS.first_unlock) THEN 1 ELSE 0 END AS "RESP"
FROM
  LockStatus AS LS, LockStatusFirstCommitOrAbortNotNull as "LSNN";