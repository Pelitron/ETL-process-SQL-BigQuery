CREATE TABLE `keepcoding.doc_type_doc_iden` AS(
  WITH control_unknown AS(
    SELECT
    calls_ivr_id,
    document_type,
    document_identification,
    IF(TRIM(document_type) <> 'UNKNOWN' AND TRIM(document_type) <>'DESCONOCIDO',1 , 0) AS document_type_flag
    FROM
    keepcoding.ivr_detail

    QUALIFY ROW_NUMBER() OVER (PARTITION BY calls_ivr_id ORDER BY document_identification) = 1
  )

  SELECT calls_ivr_id,
        document_type,
        document_identification
  FROM control_unknown
);
