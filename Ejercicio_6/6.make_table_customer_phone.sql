CREATE TABLE `keepcoding.customer_phone` AS(
  WITH control_unknown AS(
    SELECT
          calls_ivr_id,
          calls_phone_number,
          IF(TRIM(calls_phone_number) <> 'UNKNOWN', 1, 0) AS calls_phone_number_lg
    FROM
          keepcoding.ivr_detail
    QUALIFY ROW_NUMBER() OVER (PARTITION BY calls_ivr_id ORDER BY calls_phone_number) = 1
  )
  SELECT calls_ivr_id,
        calls_phone_number
  FROM control_unknown
);