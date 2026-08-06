declare @dd datetime
select @dd = getdate()

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_source_to_stage', 'R2P', 'client_id', 9,'client_id','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_source_to_stage', 'R2P', 'client_secret', 10,'client_secret','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_source_to_stage', 'R2P', 'scope', 11,'scope','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_R2P_source_to_stage', 'R2P', 'token_url', 12,'token_url','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

------------------
insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'client_id', 'https://MDR-PROD-TimeAnlytx-KV01.vault.azure.net/secrets/ORACLE-PROD-CLIENT-ID?api-version=7.3', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_source_to_stage','R2P')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'client_secret', 'https://MDR-PROD-TimeAnlytx-KV01.vault.azure.net/secrets/ORACLE-PROD-CLIENT-SECRET?api-version=7.3', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_source_to_stage','R2P')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'scope', 'https://edsv.fa.us2.oraclecloud.com:443/', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_source_to_stage','R2P')

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'token_url', 'https://idcs-28ee20e5cf564823a8b2089bda876372.identity.oraclecloud.com/oauth2/v1/token', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_R2P_source_to_stage','R2P')

