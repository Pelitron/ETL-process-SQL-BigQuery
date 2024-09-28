CREATE TABLE `keepcoding.billing_account_id` AS(
  WITH control_unknown AS (
    SELECT
          calls_ivr_id,
          billing_account_id,
          IFNULL(billing_account_id, 'UNKNOWN'),
          IF(TRIM(billing_account_id) <> 'UNKNOWN', 1, 0)

    FROM
        keepcoding.ivr_detail
    QUALIFY ROW_NUMBER() OVER (PARTITION BY calls_ivr_id ORDER BY billing_account_id NULLS LAST) = 1
  )

  SELECT calls_ivr_id,
        billing_account_id
  FROM control_unknown
);
