DROP VIEW [gpd].[stage_jcc_v]
GO
CREATE VIEW [gpd].[stage_jcc_v] AS select distinct 
stage_welding_process_key,
case when LTRIM(RTRIM(ISNULL(fab_code,'')))='' then 'N/A' else fab_code end as fab_code,
case when LTRIM(RTRIM(ISNULL(certificate_num,'')))='' then 'N/A' else certificate_num end as certificate_num,
case when LTRIM(RTRIM(ISNULL(jcc_no,'')))='' then 'N/A' else jcc_no end as jcc_no,
case when LTRIM(RTRIM(ISNULL(process,'')))='' then 'N/A' else process end as process,
case when LTRIM(RTRIM(ISNULL(discipline,'')))='' then 'N/A' else discipline end as  discipline,
jcc_submit_date,
jcc_sign_date,
jcc_receive_date,
jcc_expiry_date  
from [gpd].[stage_welding_process_v];
GO
