declare @dd datetime
select @dd = getdate()

--===============
--pl_ced_excel_P6
--===============

delete from plp_pipeline where pipeline_code = 'pl_ced_excel_P6'

insert into plp_pipeline 
select 'pl_ced_excel_P6' as pipeline_code, description as subject_area_code, 'Central Engineering Database pipeline for P6' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'CED'
--------------------------------------------------------------------------------------------------------------------------------------

delete from plp_pipeline_parameter where pipeline_code = 'pl_ced_excel_P6'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_P6', 'Excel', 'last_run_start_date', 1,'last_run_start_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_P6', 'Excel', 'sheet_name', 2,'sheet_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_P6', 'Excel', 'directory', 3,'directory','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_P6', 'Excel', 'file_name', 4,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_P6', 'Excel', 'description', 5,'description','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_P6', 'Excel', 'target_table', 6,'target_table','IN', 1, 'ajmal.usman@mcdermott.com',@dd)
--------------------------------------------------------------------------------------------------------------------------------------

delete from plp_parameter_value where pipeline_code = 'pl_ced_excel_P6'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_excel_P6','Excel')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sheet_name', 'TASK', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_excel_P6','Excel')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', '360536-DB', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_excel_P6','Excel')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', '360536_P6.xlsx', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_excel_P6','Excel')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'description', 'Primavera Export File', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_excel_P6','Excel')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'target_table', 'edw.dim_entp_360536_p6', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_excel_P6','Excel')
