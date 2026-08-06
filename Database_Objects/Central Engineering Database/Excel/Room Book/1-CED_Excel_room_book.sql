declare @dd datetime
select @dd = getdate()

--=====================
--pl_ced_excel_roombook
--=====================

delete from plp_pipeline where pipeline_code = 'pl_ced_excel_roombook'

insert into plp_pipeline 
select 'pl_ced_excel_roombook' as pipeline_code, description as subject_area_code, 'Central Engineering Database pipeline for roombook' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'CED'
--------------------------------------------------------------------------------------------------------------------------------------

delete from plp_pipeline_parameter where pipeline_code = 'pl_ced_excel_roombook'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_roombook', 'Excel', 'last_run_start_date', 1,'last_run_start_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_roombook', 'Excel', 'sheet_name', 2,'sheet_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_roombook', 'Excel', 'directory', 3,'directory','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_roombook', 'Excel', 'file_name', 4,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_roombook', 'Excel', 'description', 5,'description','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_roombook', 'Excel', 'target_table', 6,'target_table','IN', 1, 'ajmal.usman@mcdermott.com',@dd)
--------------------------------------------------------------------------------------------------------------------------------------

delete from plp_parameter_value where pipeline_code = 'pl_ced_excel_roombook'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_excel_roombook','Excel')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sheet_name', '360536-RoomBook_Local', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_excel_roombook','Excel')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', '360536-DB', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_excel_roombook','Excel')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', '360536_RoomBook.xlsx', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_excel_roombook','Excel')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'description', 'RoomBook Data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_excel_roombook','Excel')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'target_table', 'edw.dim_entp_360536_room_book', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_excel_roombook','Excel')

