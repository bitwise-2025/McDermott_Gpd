declare @dd datetime
select @dd = getdate()

delete from dbo.SEC_SA  where description = 'CED'

INSERT INTO dbo.SEC_SA (description, active, created_date_time)
VALUES ('CED', 1, @dd);

delete from plp_pipeline where pipeline_code = 'pl_ced_master_email'

insert into plp_pipeline 
select 'pl_ced_master_email' as pipeline_code, description as subject_area_code, 'CED pipeline for email' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'CED'

delete from plp_pipeline_parameter where pipeline_code = 'pl_ced_master_email'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_master_email', 'CED', 'master_pipeline_email', 1,'master_pipeline_email','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

delete from plp_parameter_value where pipeline_code = 'pl_ced_master_email'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'master_pipeline_email', 'GAMS-analytics@mcdermott.com', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_master_email','CED')
