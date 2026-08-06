declare @dd datetime
select @dd = getdate()

-----------------------------------
--pl_ced_excel_Aveva_E3D_cable_data
-----------------------------------

delete from plp_pipeline where pipeline_code = 'pl_ced_excel_Aveva_E3D_cable_data'

insert into plp_pipeline 
select 'pl_ced_excel_Aveva_E3D_cable_data' as pipeline_code, description as subject_area_code, 'Central Engineering Database pipeline for Aveva E3D' as description, null as comment, 1 as active, 'Swapnanil.Pal@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'CED'
-------------------------------------------------------------------------------------------------------------------------------------------------------------

delete from plp_pipeline_parameter where pipeline_code = 'pl_ced_excel_Aveva_E3D_cable_data'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_Aveva_E3D_cable_data', 'Excel', 'last_run_start_date', 1,'last_run_start_date','IN', 1, 'Swapnanil.Pal@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_Aveva_E3D_cable_data', 'Excel', 'sheet_name', 2,'sheet_name','IN', 1, 'Swapnanil.Pal@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_Aveva_E3D_cable_data', 'Excel', 'directory', 3,'directory','IN', 1, 'Swapnanil.Pal@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_Aveva_E3D_cable_data', 'Excel', 'file_name', 4,'file_name','IN', 1, 'Swapnanil.Pal@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_Aveva_E3D_cable_data', 'Excel', 'description', 5,'description','IN', 1, 'Swapnanil.Pal@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_excel_Aveva_E3D_cable_data', 'Excel', 'target_table', 6,'target_table','IN', 1, 'Swapnanil.Pal@mcdermott.com',@dd)
--------------------------------------------------------------------------------------------------------------------------------------------------------------

delete from plp_parameter_value where pipeline_code = 'pl_ced_excel_Aveva_E3D_cable_data'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_ced_excel_Aveva_E3D_cable_data','Excel')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'sheet_name', 'Sheet1', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_ced_excel_Aveva_E3D_cable_data','Excel')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'E3D_Export_Reports\ATTRIBUTES', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_ced_excel_Aveva_E3D_cable_data','Excel')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'CABLE_Report.xlsx', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_ced_excel_Aveva_E3D_cable_data','Excel')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'description', 'Aveva E3D Cable Data', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_ced_excel_Aveva_E3D_cable_data','Excel')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'target_table', 'edw.dim_entp_360536_E3D_CABLE', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_ced_excel_Aveva_E3D_cable_data','Excel')
