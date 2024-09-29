CREATE TABLE `keepcoding.info_by_dni_lg`AS (
    SELECT calls_ivr_id,
        MAX(CASE WHEN step_description_error = 'UNKNOWN' AND step_name = 'CUSTOMERINFOBYDNI.TX' THEN 1 ELSE 0 END) AS info_by_dni_lg
        
    FROM `keepcoding.ivr_detail`
    GROUP BY
        calls_ivr_id
    ORDER BY info_by_dni_lg
);      