declare @dd datetime
select @dd = getdate()

Delete from dbo.SEC_SA where description = 'ZYCUS'

Insert into dbo.SEC_SA (description, active, created_date_time
)values(
'ZYCUS',1, @dd)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Delete from plp_pipeline where pipeline_code ='pl_zycus_master_pipeline'
Delete from plp_pipeline where pipeline_code ='pl_zycus_source_to_stage'
Delete from plp_pipeline where pipeline_code ='pl_zycus_stage_to_raw'
Delete from plp_pipeline where pipeline_code ='pl_zycus_raw_to_destination'
Delete from plp_pipeline where pipeline_code ='pl_zycus_email_master_pipeline'

insert into plp_pipeline 
select 'pl_zycus_master_pipeline' as pipeline_code, description as subject_area_code, 'Zycus Master Pipeline' as description, null as comment, 1 as active, 'Swapnanil.Pal@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'ZYCUS'

insert into plp_pipeline
select 'pl_zycus_source_to_stage' as pipeline_code, description as subject_area_code, 'Zycus Source to Stage ADLS' as description, null as comment, 1 as active, 'Swapnanil.Pal@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'ZYCUS'

insert into plp_pipeline 
select 'pl_zycus_stage_to_raw' as pipeline_code, description as subject_area_code, 'Zycus Stage ADLS to Raw ADLS' as description, null as comment, 1 as active, 'Swapnanil.Pal@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'ZYCUS'

insert into plp_pipeline 
select 'pl_zycus_raw_to_destination' as pipeline_code, description as subject_area_code, 'Zycus Raw ADLS to Destination' as description, null as comment, 1 as active, 'Swapnanil.Pal@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'ZYCUS'

insert into plp_pipeline 
select 'pl_zycus_email_master_pipeline' as pipeline_code, description as subject_area_code, 'Zycus Pipeline Email Failure' as description, null as comment, 1 as active, 'Swapnanil.Pal@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'ZYCUS'

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------
-- pl_zycus_source_to_stage --
------------------------------

Delete from plp_pipeline_parameter where pipeline_code ='pl_zycus_source_to_stage'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_zycus_source_to_stage', 'Zycus', 'source_directory', 1,'source_directory','IN', 1, 'Swapnanil.Pal@mcdermott.com', @dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_zycus_source_to_stage', 'Zycus', 'file_name', 2,'file_name','IN', 1, 'Swapnanil.Pal@mcdermott.com', @dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_zycus_source_to_stage', 'Zycus', 'file_system', 3,'file_system','IN', 1, 'Swapnanil.Pal@mcdermott.com', @dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_zycus_source_to_stage', 'Zycus', 'folder_path', 4,'folder_path','IN', 1, 'Swapnanil.Pal@mcdermott.com', @dd)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Delete from plp_parameter_value where pipeline_code ='pl_zycus_source_to_stage'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'source_directory', 'inbound', 1, 'Swapnanil.Pal@mcdermott.com', @dd,'pl_zycus_source_to_stage','Zycus')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'SPM_Receipts', 1, 'Swapnanil.Pal@mcdermott.com', @dd,'pl_zycus_source_to_stage','Zycus')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_system', 'mdr-staging-data', 1, 'Swapnanil.Pal@mcdermott.com', @dd,'pl_zycus_source_to_stage','Zycus')
 
insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/Zycus/LOAPurchaseOrderStatus', 1, 'Swapnanil.Pal@mcdermott.com', @dd,'pl_zycus_source_to_stage','Zycus')

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------
-- pl_zycus_stage_to_raw --
---------------------------

Delete from plp_pipeline_parameter where pipeline_code ='pl_zycus_stage_to_raw'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_zycus_stage_to_raw', 'Zycus', 'input_file_system', 2,'input_file_system','IN', 1, 'Swapnanil.Pal@mcdermott.com', @dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_zycus_stage_to_raw', 'Zycus', 'folder_path', 2,'folder_path','IN', 1, 'Swapnanil.Pal@mcdermott.com', @dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_zycus_stage_to_raw', 'Zycus', 'input_file_name', 3,'input_file_name','IN', 1, 'Swapnanil.Pal@mcdermott.com', @dd)
insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_zycus_stage_to_raw', 'Zycus', 'output_file_name', 3,'output_file_name','IN', 1, 'Swapnanil.Pal@mcdermott.com', @dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_zycus_stage_to_raw', 'Zycus', 'output_file_system', 4,'output_file_system','IN', 1, 'Swapnanil.Pal@mcdermott.com', @dd)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Delete from plp_parameter_value where pipeline_code ='pl_zycus_stage_to_raw'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-staging-data', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_zycus_stage_to_raw','Zycus')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/Zycus/LOAPurchaseOrderStatus', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_zycus_stage_to_raw','Zycus')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_name', 'SPM_Receipts', 1, 'Swapnanil.Pal@mcdermott.com', @dd,'pl_zycus_stage_to_raw','Zycus')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_name', 'Receipt_File', 1, 'Swapnanil.Pal@mcdermott.com', @dd,'pl_zycus_stage_to_raw','Zycus')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'output_file_system', 'mdr-raw-data', 1, 'Swapnanil.Pal@mcdermott.com', @dd,'pl_zycus_stage_to_raw','Zycus')

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------
-- pl_zycus_raw_to_destination --
---------------------------------

Delete from plp_pipeline_parameter where pipeline_code ='pl_zycus_raw_to_destination'


insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_zycus_raw_to_destination', 'Zycus', 'folder_path', 9,'folder_path','IN', 1, 'Swapnanil.Pal@mcdermott.com', @dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_zycus_raw_to_destination', 'Zycus', 'file_name', 10,'file_name','IN', 1, 'Swapnanil.Pal@mcdermott.com', @dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_zycus_raw_to_destination', 'Zycus', 'input_file_system', 11,'input_file_system','IN', 1, 'Swapnanil.Pal@mcdermott.com', @dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_zycus_raw_to_destination', 'Zycus', 'last_run_start_date', 14, 'last_run_start_date', 'IN', 1, 'Swapnanil.Pal@mcdermott.com', @dd)

-------------------------------------------------------------------------------------------------------------------------------------------------------------

Delete from plp_parameter_value where pipeline_code ='pl_zycus_raw_to_destination'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'folder_path', 'Project_Data/Zycus/LOAPurchaseOrderStatus', 1, 'Swapnanil.Pal@mcdermott.com', @dd,'pl_zycus_raw_to_destination','Zycus')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'Receipt_File', 1, 'Swapnanil.Pal@mcdermott.com', @dd,'pl_zycus_raw_to_destination','Zycus')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_system', 'mdr-raw-data', 1, 'Swapnanil.Pal@mcdermott.com', @dd,'pl_zycus_raw_to_destination','Zycus')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', ' ', 1, 'Swapnanil.Pal@mcdermott.com', @dd, 'pl_zycus_raw_to_destination', 'Zycus')

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------
--pl_zycus_email_master_pipeline--
----------------------------------

Delete from plp_pipeline where pipeline_code ='pl_zycus_email_master_pipeline'

insert into plp_pipeline (
pipeline_code, subject_area_code, description, comment, active, touched_by, touched_dtm)
values(
'pl_zycus_email_master_pipeline', 'ZYCUS', 'pl_zycus_email_master_pipeline', 'Mock pipeline to allow for parameterization of Email details within ZYCUS', 1, 'Swapnanil.Pal@mcdermott.com', @dd)

Delete from plp_pipeline_parameter where pipeline_code ='pl_zycus_email_master_pipeline'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, comment, active, touched_by, touched_dtm
)values(
'pl_zycus_email_master_pipeline', 'EMAIL', 'zycus_master_pipeline_email_to', 1,'zycus_master_pipeline_email_to','IN', NULL, 1, 'Swapnanil.Pal@mcdermott.com', @dd)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Delete from plp_parameter_value where parameter_code ='zycus_master_pipeline_email_to'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'zycus_master_pipeline_email_to', 'Zycus-ADF-Pipeline-Failure-Reporting@mcdermott.com', 1, 'Swapnanil.Pal@mcdermott.com', @dd,'pl_zycus_email_master_pipeline','EMAIL')

Delete from plp_parameter where parameter_code ='zycus_master_pipeline_email_to'

insert into plp_parameter (
parameter_code, parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, comment, active, touched_by, touched_dtm)
values(
'zycus_master_pipeline_email_to', 'PIPELINE', 'zycus_master_pipeline_email_to', 'T', 1, 660, NULL, 1, 'Swapnanil.Pal@mcdermott.com', @dd)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
