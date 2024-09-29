CREATE OR REPLACE TABLE `keepcoding.ivr_summary` AS (
  SELECT 
         ivr_detail.calls_ivr_id AS ivr_id,
         ivr_detail.calls_phone_number AS phone_number,
         ivr_detail.calls_ivr_result AS ivr_result,
         vdn_aggregation.vdn_aggregation AS vdn_aggregation,
         ivr_detail.calls_start_date As start_date,
         ivr_detail.calls_end_date AS end_date,
         ivr_detail.calls_total_duration AS total_duration,
         ivr_detail.calls_customer_segment AS customer_segment,
         ivr_detail.calls_ivr_language AS ivr_languaje,
         ivr_detail.calls_steps_module AS steps_module,
         ivr_detail.calls_module_aggregation AS module_aggregation,
         doc_type_doc_iden.document_type,
         doc_type_doc_iden.document_identification,
         customer_phone.calls_phone_number,
         billing_account_id.billing_account_id,
         masiva_lg.masiva_lg,
         info_by_phone_lg.info_by_phone_lg,
         info_by_dni_lg.info_by_dni_lg,
         flag_24h.repeated_phone_24h,
         flag_24h.cause_recall_phone_24h
  FROM `keepcoding.ivr_detail` ivr_detail
  LEFT JOIN 
          `keepcoding.vdn_aggregation` vdn_aggregation ON ivr_detail.calls_ivr_id = vdn_aggregation.calls_ivr_id
  LEFT JOIN 
          `keepcoding.doc_type_doc_iden` doc_type_doc_iden ON ivr_detail.calls_ivr_id = doc_type_doc_iden.calls_ivr_id
  LEFT JOIN `keepcoding.customer_phone` customer_phone ON ivr_detail.calls_ivr_id = customer_phone.calls_ivr_id
  LEFT JOIN `keepcoding.billing_account_id` billing_account_id ON ivr_detail.calls_ivr_id = billing_account_id.calls_ivr_id
  LEFT JOIN `keepcoding.masiva_lg` masiva_lg ON ivr_detail.calls_ivr_id = masiva_lg.calls_ivr_id
  LEFT JOIN `keepcoding.info_by_phone_lg` info_by_phone_lg ON ivr_detail.calls_ivr_id = info_by_phone_lg.calls_ivr_id
  LEFT JOIN `keepcoding.info_by_dni_lg` info_by_dni_lg ON ivr_detail.calls_ivr_id = info_by_dni_lg.calls_ivr_id
  LEFT JOIN `keepcoding.flag_24h` flag_24h ON ivr_detail.calls_ivr_id = flag_24h.calls_ivr_id
  QUALIFY ROW_NUMBER() OVER (PARTITION BY ivr_id ORDER BY start_date) = 1
);