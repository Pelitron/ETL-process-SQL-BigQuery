CREATE TABLE `keepcoding.flag_24h` AS (
  WITH phone_grouped AS(
    SELECT calls_ivr_id,
          calls_start_date,
          calls_phone_number
    FROM `keepcoding.ivr_detail`
    QUALIFY ROW_NUMBER() OVER (PARTITION BY calls_ivr_id ORDER BY calls_phone_number) = 1
  )
  SELECT calls_ivr_id,
          calls_start_date,
          calls_phone_number,
          IF(calls_phone_number = 'UNKNOWN', 0, IF(DATE_DIFF(calls_start_date, LAG(calls_start_date) OVER (PARTITION BY calls_phone_number ORDER BY calls_start_date), HOUR) <= 24, 1, 0)) AS repeated_phone_24h,
          IF(calls_phone_number = 'UNKNOWN', 0, IF(DATE_DIFF( LEAD(calls_start_date) OVER (PARTITION BY calls_phone_number ORDER BY calls_start_date),calls_start_date, HOUR) <= 24, 1, 0)) AS cause_recall_phone_24h,
          

  FROM phone_grouped
);