-- insert into plp_pipeline

insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_legacy_plan_excel_p6_source_to_stage','NCSA','pl_legacy_plan_excel_p6_source_to_stage',NULL,'1','ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043',47)

insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_legacy_plan_excel_p6_stage_to_raw','NCSA','pl_legacy_plan_excel_p6_stage_to_raw',NULL,'1','ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043',47)

insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_legacy_plan_excel_p6_raw_to_synapse','NCSA','pl_legacy_plan_excel_p6_raw_to_synapse',NULL,'1','ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043',47)

insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_legacy_plan_excel_p6_master_pipeline','NCSA','pl_legacy_plan_excel_p6_master_pipeline',NULL,'1','ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043',47)


-- insert into plp_pipeline_parameter source_to_stage

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_source_to_stage','NetworkFolder','start_date',1,'start_date','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_source_to_stage','NetworkFolder','end_date',2,'end_date','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_source_to_stage','NetworkFolder','file_system',3,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_source_to_stage','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_source_to_stage','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_source_to_stage','NetworkFolder','source_directory',6,'source_directory','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_source_to_stage','NetworkFolder','excel_file_name',7,'excel_file_name','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

-- insert into plp_pipeline_parameter stage_to_raw

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_stage_to_raw','NetworkFolder','lastrundate',1,'lastrundate','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_stage_to_raw','NetworkFolder','file_system',2,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_stage_to_raw','NetworkFolder','folder_path',3,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_stage_to_raw','NetworkFolder','file_name',4,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

-- insert into plp_pipeline_parameter raw_to_synapse

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder','function_code',3,'function_code','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder','data_class',4,'data_class','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder','sub_source',5,'sub_source','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder','source',6,'source','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder','unit_of_measure',7,'unit_of_measure','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder','IWP_code',8,'IWP_code','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder','CWP_CODE',9,'CWP_CODE','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder','PIM_code',10,'PIM_code','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder','ROC_code',11,'ROC_code','IN',NULL,1,'ssampathkumar@mcdermott.com','2022-03-10 06:42:19.043')

GO


-- insert into plp_parameter_value source_to_stage

declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-staging-data',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_source_to_stage','NetworkFolder')
end
go


declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','P6_Legacy_Plan',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_source_to_stage','NetworkFolder')
end
go


declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('excel_file_name','*',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_source_to_stage','NetworkFolder')
end
go



declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/P6/Legacy_Plan',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_source_to_stage','NetworkFolder')
end
go



declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_directory','Production/NCSA Operational/P6/Legacy_Plan',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_source_to_stage','NetworkFolder')
end
go


declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_source_to_stage','NetworkFolder')
end
go



declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2021-10-12 02:08:36',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_source_to_stage','NetworkFolder')
end
go

-- insert into plp_parameter_value stage_to_raw

declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/P6/Legacy_Plan',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_stage_to_raw','NetworkFolder')
end
go


declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-raw-data',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_stage_to_raw','NetworkFolder')
end
go


declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','P6_Legacy_Plan',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_stage_to_raw','NetworkFolder')
end
go


declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('lastrundate','2021-10-04 12:35:59.045',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_stage_to_raw','NetworkFolder')
end
go


-- insert into plp_parameter_value raw_to_synapse


declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('last_run_end_date','currdate',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder')
end
go



declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('last_run_start_date','2021-10-04 12:36:58.280',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder')
end
go



declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source','P6-Excel-Legacy',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder')
end
go



declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source','MANUAL',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder')
end
go


declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('IWP_code','ZZZ',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder')
end
go



declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('ROC_code','ZZZ',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder')
end
go


declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('function_code','ENG',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder')
end
go


declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('CWP_CODE','ZZZ',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder')
end
go


declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('unit_of_measure','HR',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder')
end
go



declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('PIM_code','ZZZ',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder')
end
go


declare @dd datetime
select @dd = getdate()
begin
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('data_class','Time',1,'ssampathkumar@mcdermott.com',@dd,'pl_legacy_plan_excel_p6_raw_to_synapse','NetworkFolder')
end
go


declare @count int;
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_legacy_plan_excel_p6_master_pipeline' and stage_table_name = 'gpd.P6_legacy_plan' and reprocessing_table_name = 'gpd.reprocess_P6_legacy_plan'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_legacy_plan_excel_p6_master_pipeline','gpd.P6_legacy_plan','gpd.reprocess_P6_legacy_plan','dbo.fact_ops')
 end

 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_legacy_plan_excel_p6_master_pipeline' and stage_table_name = 'gpd.tmp_Activity_P6_legacy_plan' and reprocessing_table_name = 'gpd.reprocess_tmp_Activity_P6_legacy_plan'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_legacy_plan_excel_p6_master_pipeline','gpd.tmp_Activity_P6_legacy_plan','gpd.reprocess_tmp_Activity_P6_legacy_plan','dbo.dim_entp_activity')
 end
 
 select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_legacy_plan_excel_p6_master_pipeline' and stage_table_name = 'gpd.dim_ent_geac_coa_P6_legacy_plan' and reprocessing_table_name = 'gpd.reprocess_dim_ent_geac_coa_P6_legacy_plan'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_legacy_plan_excel_p6_master_pipeline','gpd.dim_ent_geac_coa_P6_legacy_plan','gpd.reprocess_dim_ent_geac_coa_P6_legacy_plan','dbo.dim_ent_geac_coa')
 end
 

