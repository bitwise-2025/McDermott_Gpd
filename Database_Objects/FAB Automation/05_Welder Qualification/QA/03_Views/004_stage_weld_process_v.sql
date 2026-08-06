DROP VIEW [gpd].[stage_weld_process_v]
GO
CREATE VIEW [gpd].[stage_weld_process_v] AS select distinct 
stage_welding_process_key,
case when LTRIM(RTRIM(ISNULL(process,'')))='' then 'N/A' else process end as process,
case when LTRIM(RTRIM(ISNULL(fab_code,'')))='' then 'N/A' else fab_code end as fab_code,
case when LTRIM(RTRIM(ISNULL(process_title,'')))='' then 'N/A' else process_title end as process_title,
case when LTRIM(RTRIM(ISNULL(discipline,'')))='' then 'N/A' else discipline end as  discipline,
case when LTRIM(RTRIM(ISNULL(position,'')))='' then 'N/A' else position end as  position
from [gpd].[stage_welding_process_v];
GO
