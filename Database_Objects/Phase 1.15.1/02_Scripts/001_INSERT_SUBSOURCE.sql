
DECLARE @SUB_SOURCE_NK INT;
DECLARE @SOURCE_NK INT;
DECLARE @SUB_SOURCE_NAME varchar(100);

 

SET @SUB_SOURCE_NK=(SELECT max(dim_ent_sub_source_nk) + 1 FROM [dbo].[dim_ent_sub_source] );
SET @SOURCE_NK=(SELECT dim_ent_source_nk from dim_ent_source   where source_name='MANUAL');
SET @SUB_SOURCE_NAME=(SELECT source_name from dim_ent_source   where source_name='MANUAL');

INSERT INTO [dbo].[dim_ent_sub_source]
           ([dim_ent_sub_source_nk]
           ,[start_date]
           ,[end_date]
           ,[hash_code]
           ,[active]
           ,[created_date_time]
           ,[modified_date_time]
           ,[late_arrival_flag]
           ,[dim_ent_source_nk]
           ,[source_name]
           ,[sub_source_name])
     SELECT
           @SUB_SOURCE_NK
           ,'2000-01-01 00:00:00.000'
           ,'2050-12-30 00:00:00.000'
           ,N'Excel_MCPM_Onshore_Cost'
           ,1
           ,getdate()
           ,NULL
           ,'N'
           ,@SOURCE_NK
           ,@SUB_SOURCE_NAME
           ,'Excel_MCPM_Onshore_Cost'
GO



declare @count int;
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_mcpmdata_cost_hours_master_pipeline' and stage_table_name = 'gpd.NCSA_MCPM_Legacy' and reprocessing_table_name = 'gpd.reprocess_NCSA_MCPM_Onshore_Legacy'

if isnull(@count,0) = 0
begin
     insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
     values ('pl_mcpmdata_cost_hours_master_pipeline','gpd.NCSA_MCPM_Legacy','gpd.reprocess_NCSA_MCPM_Onshore_Legacy','dbo.fact_ops')
end