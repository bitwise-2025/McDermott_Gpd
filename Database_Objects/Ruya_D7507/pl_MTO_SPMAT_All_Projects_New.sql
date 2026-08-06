DECLARE @Date DATETIME;
SET @Date = GETDATE();
INSERT INTO plp_pipeline 
	VALUES ('pl_MTO_SPMAT_All_Projects_New', 'NCSA', 'SMAT Planning Milestone Data Extract','',1,'aali@mcdermott.com',@Date, 9)

go
--------------------------------


DECLARE @Date DATETIME;
SET @Date = GETDATE();

insert into plp_pipeline_parameter 
(pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, comment, active, touched_by, touched_dtm)
values 
('pl_MTO_SPMAT_All_Projects_New', 'NetworkFolder','table_name1',5,'table_name1','IN', 'table_name with schema e.g. gpd.scm_procurement',1,'aali@mcdermott.com',@Date)

insert into plp_pipeline_parameter 
(pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, comment, active, touched_by, touched_dtm)
values 
('pl_MTO_SPMAT_All_Projects_New', 'NetworkFolder','table_name2',5,'table_name2','IN', 'table_name with schema e.g. gpd.scm_procurement',1,'aali@mcdermott.com',@Date)


insert into plp_pipeline_parameter 
(pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, comment, active, touched_by, touched_dtm)
values 
('pl_MTO_SPMAT_All_Projects_New', 'NetworkFolder','table_name3',5,'table_name3','IN', 'table_name with schema e.g. gpd.scm_procurement',1,'aali@mcdermott.com',@Date)


insert into plp_pipeline_parameter 
(pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, comment, active, touched_by, touched_dtm)
values 
('pl_MTO_SPMAT_All_Projects_New', 'NetworkFolder','table_name4',5,'table_name4','IN', 'table_name with schema e.g. gpd.scm_procurement',1,'aali@mcdermott.com',@Date)


insert into plp_pipeline_parameter 
(pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, comment, active, touched_by, touched_dtm)
values 
('pl_MTO_SPMAT_All_Projects_New', 'NetworkFolder','table_name5',5,'table_name5','IN', 'table_name with schema e.g. gpd.scm_procurement',1,'aali@mcdermott.com',@Date)


insert into plp_pipeline_parameter 
(pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, comment, active, touched_by, touched_dtm)
values 
('pl_MTO_SPMAT_All_Projects_New', 'NetworkFolder','logicapp_url',6,'logicapp_url','IN', '',1,'aali@mcdermott.com',@Date)


insert into plp_pipeline_parameter 
(pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, comment, active, touched_by, touched_dtm)
values 
('pl_MTO_SPMAT_All_Projects_New', 'NetworkFolder','project_number',7,'project_number','IN', '',1,'aali@mcdermott.com',@Date)


go

-------------------------


DECLARE @Date DATETIME;
SET @Date = GETDATE();

	insert into plp_parameter_value
(parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code)
values 
('table_name1', 'MTO_SPMAT_Structural_All_Projects',1,'aali@mcdermott.com',@date, 'pl_MTO_SPMAT_All_Projects_New','NetworkFolder')

	insert into plp_parameter_value
(parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code)
values 
('table_name2', 'MTO_SPMAT_Electrical_and_instrument_All_Projects',1,'aali@mcdermott.com',@date, 'pl_MTO_SPMAT_All_Projects_New','NetworkFolder')

	insert into plp_parameter_value
(parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code)
values 
('table_name3', 'MTO_SPMAT_Subsea_All_Projects',1,'aali@mcdermott.com',@date, 'pl_MTO_SPMAT_All_Projects_New','NetworkFolder')

	insert into plp_parameter_value
(parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code)
values 
('table_name4', 'MTO_SPMAT_Mechanical_All_Projects',1,'aali@mcdermott.com',@date, 'pl_MTO_SPMAT_All_Projects_New','NetworkFolder')

	insert into plp_parameter_value
(parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code)
values 
('table_name5', 'MTO_SPMAT_Piping_All_Projects',1,'aali@mcdermott.com',@date, 'pl_MTO_SPMAT_All_Projects_New','NetworkFolder')

	insert into plp_parameter_value
(parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code)
values 
('table_name', 'MTO_SPMAT_Ruya11_D7507',1,'aali@mcdermott.com','@date', 'pl_MTO_SPMAT_All_Projects_New','NetworkFolder')

	insert into plp_parameter_value
(parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code)
values 
('logicapp_url', 'https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ',1,'aali@mcdermott.com','@date', 'pl_MTO_SPMAT_All_Projects_New','NetworkFolder')

	insert into plp_parameter_value
(parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code)
values 
('project_number', 'D7264',1,'aali@mcdermott.com',@date, 'pl_MTO_SPMAT_All_Projects_New','NetworkFolder')

go
