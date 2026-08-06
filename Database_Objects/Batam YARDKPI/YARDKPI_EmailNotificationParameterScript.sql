------------------------------------------------------------
--pl_yardkpi_master_pipelines - parameters for YARDKPI email notification
--------------------------------------------------------------

insert into plp_pipeline (
pipeline_code, subject_area_code, description, comment, active, touched_by, touched_dtm, sec_sa_id
)values(
'pl_yardkpi_master_pipelines', 'YARDKPI', 'pl_yardkpi_master_pipelines', 'Mock pipeline to allow for parameterization of Email details within YARDKPI', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10',30)

----------

insert into dbo.plp_parameter (
parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
)values(
'yardkpi_master_pipeline_email_to', 'PIPELINE', 'yardkpi_master_pipeline_email_to', 'T', 1, 660, 1, 'ajmal.usman@mcdermott.com','2022-08-30 06:16:12.197')

--------------
insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_master_pipelines', 'EMAIL', 'yardkpi_master_pipeline_email_to', 1,'yardkpi_master_pipeline_email_to','IN', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10')
-----------------

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'yardkpi_master_pipeline_email_to', 'QAQC_YardKPI_Reporting@mcdermott.com', 1, 'ajmal.usman@mcdermott.com','2022-08-29T11:20:24.10','pl_yardkpi_master_pipelines','EMAIL')
