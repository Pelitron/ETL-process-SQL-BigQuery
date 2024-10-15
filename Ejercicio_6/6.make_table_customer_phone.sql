CREATE TABLE `keepcoding.customer_phone` AS(
  WITH control_unknown AS(
    SELECT
          calls_ivr_id,
          customer_phone,
          IF(TRIM(customer_phone) <> 'UNKNOWN', 1, 0) AS customer_phone_lg
    FROM
          keepcoding.ivr_detail
    QUALIFY ROW_NUMBER() OVER (PARTITION BY calls_ivr_id ORDER BY customer_phone) = 1
  )
  SELECT calls_ivr_id,
        customer_phone
  FROM control_unknown
);
