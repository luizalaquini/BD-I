

-- ========================================================================
-- 2PL rigorous
--
-- criado por: 
-- Dionatas Brito 2019202307
-- Luiza Laquini  2019107786
-- ========================================================================


WITH LockStatus AS (
  SELECT
    "#t" AS transaction_id,
    MIN(CASE WHEN op = 'unlock' THEN time END) AS first_unlock,
    MIN(CASE WHEN op IN ('commit', 'abort') THEN time END) AS first_commit_or_abort
  FROM
    "Schedule"
  GROUP BY
    "#t"
)
SELECT CASE WHEN first_unlock < first_commit_or_abort THEN 0 ELSE 1 END AS "RESP"
FROM
  LockStatus;