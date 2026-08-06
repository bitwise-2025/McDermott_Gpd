---------------plp_pipeline-----------------------
DECLARE @Date DATETIME;

declare @count int				
declare @next_val int; 

SET @Date = GETDATE();

select @next_val = sec_sa_id from dbo.sec_sa where description = 'NCSA'				
select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_mcpmdata_offshore_weekly_historical_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_mcpmdata_offshore_weekly_historical_master_pipeline','NCSA','Historical Load for MCPM Weekly offshore run from start_date to end_date',NULL,'1','ssampathkumar@mcdermott.com',@Date,@next_val)
 end

select @count = count(*) from dbo.plp_pipeline Where pipeline_code = 'pl_mcpmdata_offshore_weekly_master_pipeline'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline(pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id)
	 values ('pl_mcpmdata_offshore_weekly_master_pipeline','NCSA','Master pipeline for MCPM Weekly offshore run',NULL,'1','ssampathkumar@mcdermott.com',@Date,@next_val)
 end


-----------------------plp_pipeline_parameter------------------------------------

INSERT [plp_pipeline_parameter] ([pipeline_code], [pipeline_sub_code], [parameter_code], [display_order], [source_column_name], [source_operator], [comment], [active], [touched_by], [touched_dtm]) VALUES (N'pl_mcpmdata_offshore_weekly_historical_master_pipeline', N'MCPM', N'start_date', 1, N'start_date', N'IN', NULL, 1, N'ssampathkumar@mcdermott.com', @Date)

INSERT [plp_pipeline_parameter] ([pipeline_code], [pipeline_sub_code], [parameter_code], [display_order], [source_column_name], [source_operator], [comment], [active], [touched_by], [touched_dtm]) VALUES (N'pl_mcpmdata_offshore_weekly_historical_master_pipeline', N'MCPM', N'end_date', 2, N'end_date', N'IN', NULL, 1, N'ssampathkumar@mcdermott.com', @Date)



-----------------------plp_parameter_value------------------------------------

INSERT [plp_parameter_value] ([parameter_code], [parameter_value], [active], [touched_by], [touched_dtm], [pipeline_code], [pipeline_sub_code]) VALUES (N'start_date', N'2021-08-01', 1, N'ssampathkumar@mcdermott.com', @Date, N'pl_mcpmdata_offshore_weekly_historical_master_pipeline', N'MCPM')

INSERT [plp_parameter_value] ([parameter_code], [parameter_value], [active], [touched_by], [touched_dtm], [pipeline_code], [pipeline_sub_code]) VALUES (N'end_date', N'2021-09-30', 1, N'ssampathkumar@mcdermott.com', @Date, N'pl_mcpmdata_offshore_weekly_historical_master_pipeline', N'MCPM')





-----------------------plp_pipeline_details------------------------------------

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_mcpmdata_offshore_weekly_master_pipeline' and stage_table_name = 'gpd.NCSA_MCPM_weekly_offshore' and reprocessing_table_name = 'gpd.reprocess_NCSA_MCPM_weekly_offshore'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_mcpmdata_offshore_weekly_master_pipeline','gpd.NCSA_MCPM_weekly_offshore','gpd.reprocess_NCSA_MCPM_weekly_offshore','dbo.fact_ops')
 end