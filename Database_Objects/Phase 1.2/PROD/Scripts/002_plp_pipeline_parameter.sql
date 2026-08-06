--------------------------------------------------AK Scripts---------------------------------------
DECLARE @Date DATETIME;
SET @Date = GETDATE();


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_ncsa_project_list','Sitepro','projectdetail_json',3,'projectdetail_json','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_ncsa_project_list','Sitepro','projectid',1,'projectid','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_ncsa_project_list','Sitepro','databaseName',2,'databaseName','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)


-------------------------------------------Baral, Debi Scripts----------------------------------------

--Dummy entry for pipeline_sub_code= 'Sitepro' which will be used in the Select Insert script
insert into plp_pipeline_parameter values('pl_6wklookahead_sitepro_source_to_stage','Sitepro','databaseName',13,'databaseName','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date);

--Insert statement for plp_pipeline_parameter by using Insert select 
insert into plp_pipeline_parameter 
select pipeline_code,'99236910' AS  pipeline_sub_code,parameter_code,display_order,
source_column_name,source_operator,comment,active,touched_by,@Date AS touched_dtm
from plp_pipeline_parameter
where pipeline_code like 'pl_6wklookahead_sitepro_source_to_stage%' and pipeline_sub_code ='Sitepro';

insert into plp_pipeline_parameter 
select pipeline_code,'99185710' AS  pipeline_sub_code,parameter_code,display_order,
source_column_name,source_operator,comment,active,touched_by,@Date AS touched_dtm
from plp_pipeline_parameter
where pipeline_code like 'pl_6wklookahead_sitepro_source_to_stage%' and pipeline_sub_code ='Sitepro';


