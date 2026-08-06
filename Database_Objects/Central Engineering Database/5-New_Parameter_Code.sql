declare @dd datetime
select @dd = getdate()
----------------------

delete from plp_parameter where parameter_code = 'description'

insert into plp_parameter (
parameter_code, parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, comment, active, touched_by, touched_dtm
) values (
'description', 'PIPELINE', 'pipeline_description', 'T', 1, 5000, '', 1, 'Swapnanil.Pal@mcdermott.com', @dd)
-----------------------------------------------------------------------------------------------------------------------------------------------

delete from plp_parameter where parameter_code = 'target_table'

insert into plp_parameter (
parameter_code, parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, comment, active, touched_by, touched_dtm
) values (
'target_table', 'PIPELINE', 'synapse_target_table', 'T', 1, 500, '', 1, 'Swapnanil.Pal@mcdermott.com', @dd)
-----------------------------------------------------------------------------------------------------------------------------------------------

delete from plp_parameter where parameter_code = 'port'

insert into plp_parameter (
parameter_code, parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, comment, active, touched_by, touched_dtm
) values (
'port', 'PIPELINE', 'oracle_port_no', 'T', 1, 500, '', 1, 'Swapnanil.Pal@mcdermott.com', @dd)
-----------------------------------------------------------------------------------------------------------------------------------------------

delete from plp_parameter where parameter_code = 'database_name'

insert into plp_parameter (
parameter_code, parameter_type_code, description, parameter_data_type, max_no_values, parameter_size, comment, active, touched_by, touched_dtm
) values (
'database_name', 'PIPELINE', 'Gets the databasename from source', 'T', 1, 500, '', 1, 'Swapnanil.Pal@mcdermott.com', @dd)
