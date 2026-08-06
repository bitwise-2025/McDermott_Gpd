 declare @dd datetime
select @dd = getdate()

--=========================================
--pl_ced_oracle_edw_document_tag_comparison
--==========================================

delete from plp_pipeline where pipeline_code = 'pl_ced_oracle_edw_document_tag_comparison'

insert into plp_pipeline 
select 'pl_ced_oracle_edw_document_tag_comparison' as pipeline_code, description as subject_area_code, 'Central Engineering Database pipeline for oracle_edw_document_tag_comparison' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'CED'
--------------------------------------------------------------------------------------------------------------------------------------

delete from plp_pipeline_parameter where pipeline_code = 'pl_ced_oracle_edw_document_tag_comparison'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_edw_document_tag_comparison', 'Oracle_DB', 'table_schema', 1,'table_schema','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_edw_document_tag_comparison', 'Oracle_DB', 'table_name', 2,'table_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_edw_document_tag_comparison', 'Oracle_DB', 'file_system', 3,'file_system','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_edw_document_tag_comparison', 'Oracle_DB', 'directory', 4,'directory','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_edw_document_tag_comparison', 'Oracle_DB', 'file_name', 5,'file_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_edw_document_tag_comparison', 'Oracle_DB', 'server_name', 6,'server_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_edw_document_tag_comparison', 'Oracle_DB', 'port', 7,'port','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_edw_document_tag_comparison', 'Oracle_DB', 'database_name', 8,'database_name','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_edw_document_tag_comparison', 'Oracle_DB', 'description', 9,'description','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_edw_document_tag_comparison', 'Oracle_DB', 'target_table', 10,'target_table','IN', 1, 'ajmal.usman@mcdermott.com',@dd)
--------------------------------------------------------------------------------------------------------------------------------------

delete from plp_parameter_value where pipeline_code = 'pl_ced_oracle_edw_document_tag_comparison'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'table_schema', 'P360536_EDW', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_oracle_edw_document_tag_comparison','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'table_name', 'BA_DOCUMENT_TAG_COMPARISON_CONSOLIDATED', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_oracle_edw_document_tag_comparison','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_system', 'mdr-staging-data', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_oracle_edw_document_tag_comparison','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/Central_Engineering_Database/Oracle_DB/edw_document_tag_comparison', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_oracle_edw_document_tag_comparison','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'BA_DOCUMENT_TAG_COMPARISON_CONSOLIDATED', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_oracle_edw_document_tag_comparison','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'server_name', 'hag-oracledb02', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_oracle_edw_document_tag_comparison','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'port', '7049', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_oracle_edw_document_tag_comparison','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'database_name', 'SPF09NLP', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_oracle_edw_document_tag_comparison','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'description', 'Document Tag Relationship', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_oracle_edw_document_tag_comparison','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'target_table', 'edw.dim_entp_360536_edw_document_tag_comparison', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_oracle_edw_document_tag_comparison','Oracle_DB')

