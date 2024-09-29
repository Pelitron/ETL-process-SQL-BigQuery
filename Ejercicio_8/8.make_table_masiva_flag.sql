CREATE TABLE `keepcoding.masiva_lg`AS (
  SELECT
        calls_ivr_id,
        MAX(CASE WHEN module_name = 'AVERIA_MASIVA' THEN 1 ELSE 0 END) AS masiva_lg
  FROM
        keepcoding.ivr_detail
  GROUP BY
        calls_ivr_id
);