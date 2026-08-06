DECLARE @Date DATETIME;
DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();
SET @v_pipelinename='pl_ROC_Ruya11_D7507'

delete from [dbo].[plp_pipeline] where [pipeline_code] = @v_pipelinename
delete from [dbo].[plp_pipeline_parameter] where [pipeline_code] = @v_pipelinename
delete from [dbo].[plp_parameter_value] where [pipeline_code] = @v_pipelinename


--PLP Pipeline
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES (@v_pipelinename,'NCSA','Manual Excel File Direct Source To Synapse',NULL,1,'aditya.anand2@mcdermott.com',@Date,9)


--PLP Pipeline Parameter
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','start_date',1,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','end_date',2,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','source_directory',3,'source_directory','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','table_name',4,'table_name','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','logicapp_url',5,'logicapp_url','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','project_number',6,'project_number','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','file_name',7,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)


--PLP Pipeline values

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','ROC*.xlsx',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date','2021-10-07 11:33:55',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('end_date','currdate',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('source_directory','07. D7507 - RUYA 11/02. Engineering/02. ROC/',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('table_name','ROC_Ruya11_D7507',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')	 
	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('project_number','D7507',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')



GO

CREATE TABLE [epr].[ROC_Ruya11_D7507](
[MilestoneClass]   varchar(100) NULL,
[ROC]   varchar(100) NULL,
[SourceFileName]   varchar(4000) NULL,
[CreatedDateTime]   datetime NULL,
[project_number]   varchar(100) NULL
)WITH(	DISTRIBUTION = ROUND_ROBIN,	CLUSTERED COLUMNSTORE INDEX)


GO


