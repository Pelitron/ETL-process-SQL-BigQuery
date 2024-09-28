CREATE TABLE `keepcoding.vdn_aggregation`AS(
    WITH vdn_aggregation_cte AS (
        SELECT
            calls_ivr_id,
            CASE
                WHEN calls_vdn_label LIKE 'ATC%' THEN 'FRONT'
                WHEN calls_vdn_label LIKE 'TECH%' THEN 'TECH'
                WHEN calls_vdn_label = 'ABSORPTION' THEN 'ABSORPTION'
                ELSE 'RESTO'
            END AS vdn_aggregation
        FROM
            keepcoding.ivr_detail
    )

    SELECT
        calls_ivr_id,
        MAX(vdn_aggregation) AS vdn_aggregation
    FROM
        vdn_aggregation_cte
    GROUP BY
        calls_ivr_id
)