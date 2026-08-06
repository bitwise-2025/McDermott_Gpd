DROP VIEW [gpd].[stage_welding_process_v]
GO
CREATE VIEW [gpd].[stage_welding_process_v] AS SELECT  
stage_welding_process_key,
case when LTRIM(RTRIM(ISNULL(fab_code,'')))='' then 'N/A' else LTRIM(RTRIM(fab_code)) end as fab_code,
CASE WHEN LTRIM(RTRIM(ISNULL(welder,'')))='' THEN 'N/A' ELSE LTRIM(RTRIM(welder)) END AS welder,
LTRIM(RTRIM(welder_name)) welder_name,
case when LTRIM(RTRIM(ISNULL(process,'')))='' then 'N/A' else LTRIM(RTRIM(process)) end as process,
LTRIM(RTRIM(process_title)) process_title,
case when LTRIM(RTRIM(ISNULL(discipline,'')))='' then 'N/A' else LTRIM(RTRIM(discipline)) end as  discipline,
CASE WHEN first_qual_date  = '1900-01-01 00:00:00.000' THEN NULL ELSE first_qual_date END AS first_qual_date,
CASE WHEN qual_expiry_date  = '1900-01-01 00:00:00.000' THEN NULL ELSE qual_expiry_date END AS qual_expiry_date,
case when LTRIM(RTRIM(ISNULL(certificate_num,'')))='' then 'N/A' else LTRIM(RTRIM(certificate_num)) end as certificate_num,
LTRIM(RTRIM(position)) position,
LTRIM(RTRIM(witness)) witness,
LTRIM(RTRIM(weld_code)) weld_code,
CASE WHEN training_reg_date  = '1900-01-01 00:00:00.000' THEN NULL ELSE training_reg_date END AS training_reg_date,
CASE WHEN training_start_date  = '1900-01-01 00:00:00.000' THEN NULL ELSE training_start_date END AS training_start_date,
CASE WHEN ndt_test_date  = '1900-01-01 00:00:00.000' THEN NULL ELSE ndt_test_date END AS ndt_test_date,
LTRIM(RTRIM(ndt_status)) ndt_status,
CASE WHEN training_end_date  = '1900-01-01 00:00:00.000' THEN NULL ELSE training_end_date END AS training_end_date,
CASE WHEN wqt_date  = '1900-01-01 00:00:00.000' THEN NULL ELSE wqt_date END AS wqt_date,
CASE WHEN mech_lab_submit_date  = '1900-01-01 00:00:00.000' THEN NULL ELSE mech_lab_submit_date END AS mech_lab_submit_date,
CASE WHEN mech_test_receive_date  = '1900-01-01 00:00:00.000' THEN NULL ELSE mech_test_receive_date END AS mech_test_receive_date,
LTRIM(RTRIM(mech_status)) mech_status,
case when LTRIM(RTRIM(ISNULL(jcc_no,'')))='' then 'N/A' else LTRIM(RTRIM(jcc_no)) end as jcc_no,
CASE WHEN jcc_submit_date  = '1900-01-01 00:00:00.000' THEN NULL ELSE jcc_submit_date END AS jcc_submit_date,
CASE WHEN jcc_sign_date  = '1900-01-01 00:00:00.000' THEN NULL ELSE jcc_sign_date END AS jcc_sign_date,
CASE WHEN jcc_receive_date  = '1900-01-01 00:00:00.000' THEN NULL ELSE jcc_receive_date END AS jcc_receive_date,
CASE WHEN jcc_expiry_date  = '1900-01-01 00:00:00.000' THEN NULL ELSE jcc_expiry_date END AS jcc_expiry_date,
LTRIM(RTRIM(prod_weld_flag)) prod_weld_flag,
LTRIM(RTRIM(Prod_weld_required)) Prod_weld_required,
LTRIM(RTRIM(Prod_weld_completed)) Prod_weld_completed,
CASE WHEN prod_weld_completion_date  = '1900-01-01 00:00:00.000' THEN NULL ELSE prod_weld_completion_date END AS prod_weld_completion_date,
LTRIM(RTRIM(rec_source)) rec_source,
case when LTRIM(RTRIM(ISNULL(contract_id,'')))='' then 'N/A' else LTRIM(RTRIM(contract_id)) end as contract_id,
load_date				
FROM [gpd].[stage_welding_process]  
WHERE stage_welding_process_key not in
(SELECT stage_welding_process_key FROM [gpd].[stage_welding_process] 
WHERE fab_code is null or welder is null or jcc_no is null or contract_id is null or process is null);
GO

