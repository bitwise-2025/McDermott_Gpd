declare @dd datetime
select @dd = getdate()

--===============================
--pl_ced_oracle_spi_bal_spi_equip
--===============================

delete from plp_pipeline where pipeline_code = 'pl_ced_oracle_spi_bal_spi_equip'

insert into plp_pipeline 
select 'pl_ced_oracle_spi_bal_spi_equip' as pipeline_code, description as subject_area_code, 'Central Engineering Database pipeline for oracle_espi_bal_spi_equip' as description, null as comment, 1 as active, 'Swapnanil.Pal@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'CED'
--------------------------------------------------------------------------------------------------------------------------------------

delete from plp_pipeline_parameter where pipeline_code = 'pl_ced_oracle_spi_bal_spi_equip'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_spi_bal_spi_equip', 'Oracle_DB', 'table_schema', 1,'table_schema','IN', 1, 'Swapnanil.Pal@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_spi_bal_spi_equip', 'Oracle_DB', 'table_name', 2,'table_name','IN', 1, 'Swapnanil.Pal@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_spi_bal_spi_equip', 'Oracle_DB', 'file_system', 3,'file_system','IN', 1, 'Swapnanil.Pal@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_spi_bal_spi_equip', 'Oracle_DB', 'directory', 4,'directory','IN', 1, 'Swapnanil.Pal@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_spi_bal_spi_equip', 'Oracle_DB', 'file_name', 5,'file_name','IN', 1, 'Swapnanil.Pal@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_spi_bal_spi_equip', 'Oracle_DB', 'server_name', 6,'server_name','IN', 1, 'Swapnanil.Pal@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_spi_bal_spi_equip', 'Oracle_DB', 'port', 7,'port','IN', 1, 'Swapnanil.Pal@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_spi_bal_spi_equip', 'Oracle_DB', 'database_name', 8,'database_name','IN', 1, 'Swapnanil.Pal@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_spi_bal_spi_equip', 'Oracle_DB', 'description', 9,'description','IN', 1, 'Swapnanil.Pal@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_oracle_spi_bal_spi_equip', 'Oracle_DB', 'target_table', 10,'target_table','IN', 1, 'Swapnanil.Pal@mcdermott.com',@dd)
--------------------------------------------------------------------------------------------------------------------------------------

delete from plp_parameter_value where pipeline_code = 'pl_ced_oracle_spi_bal_spi_equip'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'table_schema', 'SPI_BAL', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_ced_oracle_spi_bal_spi_equip','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'table_name', 'MDR_PIM_SPI', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_ced_oracle_spi_bal_spi_equip','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_system', 'mdr-staging-data', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_ced_oracle_spi_bal_spi_equip','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'directory', 'Project_Data/Central_Engineering_Database/Oracle_DB/edw_spi_equip', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_ced_oracle_spi_bal_spi_equip','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'file_name', 'MDR_PIM_SPI', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_ced_oracle_spi_bal_spi_equip','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'server_name', 'hag-oracledb01', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_ced_oracle_spi_bal_spi_equip','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'port', '7040', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_ced_oracle_spi_bal_spi_equip','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'database_name', 'SPI11NLP', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_ced_oracle_spi_bal_spi_equip','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'description', 'Smart Instrumentation Equipment', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_ced_oracle_spi_bal_spi_equip','Oracle_DB')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'target_table', 'edw.dim_entp_360536_spi_equip', 1, 'Swapnanil.Pal@mcdermott.com',@dd,'pl_ced_oracle_spi_bal_spi_equip','Oracle_DB')
------------------------------------------------------------------------------------------------------------------------------------

delete from dbo.plp_parameter where parameter_code = 'table_schema'

insert into dbo.plp_parameter (
parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
)values(
'table_schema', 'PIPELINE', 'table schema', 'T', 1, 5000, 1, 'Swapnanil.Pal@mcdermott.com',@dd)

delete from dbo.plp_parameter where parameter_code = 'table_name'

insert into dbo.plp_parameter (
parameter_code,	parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, active, touched_by, touched_dtm
)values(
'table_name', 'PIPELINE', 'table name', 'T', 1, 5000, 1, 'Swapnanil.Pal@mcdermott.com',@dd)
