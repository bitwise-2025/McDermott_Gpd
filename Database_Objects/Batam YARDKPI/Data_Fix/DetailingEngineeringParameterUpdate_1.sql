insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'last_run_start_date', '', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_detailing_engineering_excel_source_to_stage','NetworkFolder')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_detailing_engineering_excel_source_to_stage', 'NetworkFolder', 'last_run_start_date', 7,'last_run_start_date','IN', 1, 'ajmal.usman@mcdermott.com','2022-10-06T11:20:24.10')

UPDATE plp_parameter_value
SET parameter_value = 'D7068 - Marjan Package 1 - Detailing Engineering Weekly Progress'
WHERE pipeline_code = 'pl_yardkpi_detailing_engineering_excel_source_to_stage' and parameter_code = 'input_file_name'

UPDATE plp_parameter_value
SET parameter_value = 'Detailing\Drawings\Project Control\1.On Going Project\D7068- Aramco Marjan'
WHERE pipeline_code = 'pl_yardkpi_detailing_engineering_excel_source_to_stage' and parameter_code = 'source_directory'

UPDATE plp_parameter_value
SET parameter_value = ''
WHERE pipeline_code = 'pl_yardkpi_detailing_engineering_excel_source_to_stage' and parameter_code = 'last_run_start_date'

truncate table [dbo].[dim_entp_yardkpi_detailing_engineering]
truncate table [dbo].[fact_yardkpi_detailing_engineering_data]
truncate table [dbo].[fact_yardkpi_detailing_engineering_plan]
truncate table [yardkpi].[reprocess_detailing_engineering]
truncate table [yardkpi].[reprocess_fact_yardkpi_detailing_activity]
truncate table [yardkpi].[reprocess_fact_yardkpi_detailing_plan]
truncate table [yardkpi].[stage_detailing_engineering]
