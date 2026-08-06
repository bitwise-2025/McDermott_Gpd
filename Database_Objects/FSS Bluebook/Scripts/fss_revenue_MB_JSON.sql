

DECLARE @Date DATETIME;

DECLARE @v_pipelinename varchar(150);

 

 

SET @Date = GETDATE();

SET @v_pipelinename='pl_sample_fss_revenue_mb_stagejson_master_pipeline'

 

 
DELETE FROM PLP_PIPELINE WHERE PIPELINE_CODE =@v_pipelinename
--PLP Pipeline

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])

    VALUES (@v_pipelinename,'FSS','Excel File to Syn Stage JSON',NULL,1,'chhaya.kotian@mcdermott.com',@Date,47)

 

 

/*

--PLP Parammeter

INSERT INTO [dbo].[plp_parameter]

([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])

     VALUES('stage_table','PIPELINE','stage table name along with schema to be passed parameter','T','1','500',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

 

 

--PLP Parammeter

INSERT INTO [dbo].[plp_parameter]

([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])

     VALUES('version_no','PIPELINE_INCREMENTAL','Version number to indicate which version was loaded.','T','1','200',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

*/ --one time for all pipleines.

 

/*****************************************/ 
DELETE FROM [dbo].[plp_pipeline_parameter] WHERE PIPELINE_CODE =@v_pipelinename
--PLP Pipeline Parameter

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','start_date',1,'start_date','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','end_date',2,'end_date','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','file_system',3,'file_system','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','file_name',5,'file_name','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','source_directory',6,'source_directory','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','input_file_name',7,'input_file_name','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','lastrundate',8,'lastrundate','IN','Date used to store when raw was last run',1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','version_no',9,'version_no','IN','version number to indicate latest load. Incremented everyrun success or failed',1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','stage_table',10,'stage_table','IN','stage_table name with schema e.g. gpd.scm_procurement',1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','load_name',11,'load_name','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)


--INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

--VALUES(@v_pipelinename,'NetworkFolder','input_file_system',11,'input_file_system','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

--INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

--VALUES(@v_pipelinename,'NetworkFolder','SQL_Script_1',12,'SQL_Script_1','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

--INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

--VALUES(@v_pipelinename,'NetworkFolder','SQL_Script_2',13,'SQL_Script_2','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

 
/*************************************************/
 


DELETE FROM [plp_parameter_value]  WHERE PIPELINE_CODE =@v_pipelinename
--PLP Pipeline values

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('start_date','2021-10-07 11:33:55',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('end_date','currdate',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('folder_path','Project_Data/FSS',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('file_system','mdr-staging-data',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('file_name','fss_revenue',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('source_directory','Development/FSS/MB/Revenue',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('input_file_name','*.xlsx',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('stage_table','fss.stage_fss_revenue_mb',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('lastrundate','2022-01-15 11:53:39.682',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('version_no','2',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('load_name','fss_revenue_mb_JSON',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

--INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

--    VALUES('input_file_system','mdr-raw-data',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

--INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

--    VALUES('SQL_Script_1','select * from',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

--INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

--    VALUES('SQL_Script_2','select * from',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

 


 

/***********************/


 


/**********************************/
DELETE FROM GENERIC_JSON_HEADER WHERE LOAD_NAME='fss_revenue_mb_JSON'
INSERT INTO GENERIC_JSON_HEADER VALUES

('fss_revenue_mb_JSON','fss_revenue_mb_JSON','fss.stage_fss_revenue_mb','fss.stage_fss_revenue_mb_v','fss.error_fss_revenue_mb_v','Y','Y')

DELETE FROM GENERIC_JSON_DETAIL WHERE LOAD_NAME='fss_revenue_mb_JSON'

INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','zVersionNo','Int','NI',NULL,'[zVersionNo]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','zSourceFileName','Varchar(Max)','V',NULL,'[zSourceFileName]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','zCreatedDateTime','DateTime','D',23,'[zCreatedDateTime]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','#','Varchar(Max)','V',NULL,'[#]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Business Line','Varchar(Max)','V',NULL,'[Business Line]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','External Product Line1','Varchar(Max)','V',NULL,'[External Product Line1]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Project No.','Varchar(Max)','V',NULL,'[Project No.]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','JV/Non-JV','Varchar(Max)','V',NULL,'[JV/Non-JV]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','BL/PW','Varchar(Max)','V',NULL,'[BL/PW]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','External Product Line','Varchar(Max)','V',NULL,'[External Product Line]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Project Title','Varchar(Max)','V',NULL,'[Project Title]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Customer','Varchar(Max)','V',NULL,'[Customer]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Jan Q Latest Update HYP','Money','N',NULL,'[Jan Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Feb Q Latest Update HYP','Money','N',NULL,'[Feb Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Mar Q Latest Update HYP','Money','N',NULL,'[Mar Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Apr Q Latest Update HYP','Money','N',NULL,'[Apr Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','May Q Latest Update HYP','Money','N',NULL,'[May Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Jun Q Latest Update HYP','Money','N',NULL,'[Jun Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Jul Q Latest Update HYP','Money','N',NULL,'[Jul Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Aug Q Latest Update HYP','Money','N',NULL,'[Aug Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Sep Q Latest Update HYP','Money','N',NULL,'[Sep Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Oct Q Latest Update HYP','Money','N',NULL,'[Oct Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Nov Q Latest Update HYP','Money','N',NULL,'[Nov Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Dec Q Latest Update HYP','Money','N',NULL,'[Dec Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Total  Q Latest Update HYP','Money','N',NULL,'[Total  Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X1','Varchar(Max)','V',NULL,'[X1]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Jan Q Latest Update ADJ','Money','N',NULL,'[Jan Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Feb Q Latest Update ADJ','Money','N',NULL,'[Feb Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Mar Q Latest Update ADJ','Money','N',NULL,'[Mar Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Apr Q Latest Update ADJ','Money','N',NULL,'[Apr Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','May Q Latest Update ADJ','Money','N',NULL,'[May Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Jun Q Latest Update ADJ','Money','N',NULL,'[Jun Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Jul Q Latest Update ADJ','Money','N',NULL,'[Jul Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Aug Q Latest Update ADJ','Money','N',NULL,'[Aug Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Sep Q Latest Update ADJ','Money','N',NULL,'[Sep Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Oct Q Latest Update ADJ','Money','N',NULL,'[Oct Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Nov Q Latest Update ADJ','Money','N',NULL,'[Nov Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Dec Q Latest Update ADJ','Money','N',NULL,'[Dec Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Total  Q Latest Update ADJ','Money','N',NULL,'[Total  Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X2','Varchar(Max)','V',NULL,'[X2]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Jan Q Latest Update','Money','N',NULL,'[Jan Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Feb Q Latest Update','Money','N',NULL,'[Feb Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Mar Q Latest Update','Money','N',NULL,'[Mar Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Apr Q Latest Update','Money','N',NULL,'[Apr Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','May Q Latest Update','Money','N',NULL,'[May Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Jun Q Latest Update','Money','N',NULL,'[Jun Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Jul Q Latest Update','Money','N',NULL,'[Jul Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Aug Q Latest Update','Money','N',NULL,'[Aug Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Sep Q Latest Update','Money','N',NULL,'[Sep Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Oct Q Latest Update','Money','N',NULL,'[Oct Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Nov Q Latest Update','Money','N',NULL,'[Nov Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Dec Q Latest Update','Money','N',NULL,'[Dec Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Total  Q Latest Update','Money','N',NULL,'[Total  Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X3','Varchar(Max)','V',NULL,'[X3]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Q1MB','Money','N',NULL,'[Q1MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Q2MB','Money','N',NULL,'[Q2MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Q3MB','Money','N',NULL,'[Q3MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Q4MB','Money','N',NULL,'[Q4MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','TotalMB','Money','N',NULL,'[TotalMB]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X4','Varchar(Max)','V',NULL,'[X4]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Q1F2','Money','N',NULL,'[Q1F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Q2F2','Money','N',NULL,'[Q2F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Q3F2','Money','N',NULL,'[Q3F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Q4F2','Money','N',NULL,'[Q4F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','TotalF2','Money','N',NULL,'[TotalF2]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X5','Varchar(Max)','V',NULL,'[X5]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X6','Varchar(Max)','V',NULL,'[X6]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X7','Varchar(Max)','V',NULL,'[X7]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X8','Varchar(Max)','V',NULL,'[X8]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X9','Varchar(Max)','V',NULL,'[X9]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X10','Varchar(Max)','V',NULL,'[X10]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X11','Varchar(Max)','V',NULL,'[X11]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Q1 MB Prev','Money','N',NULL,'[Q1 MB Prev]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Q2 MB Prev','Money','N',NULL,'[Q2 MB Prev]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Q3 MB Prev','Money','N',NULL,'[Q3 MB Prev]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Q4 MB Prev','Money','N',NULL,'[Q4 MB Prev]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','Total MB Prev','Money','N',NULL,'[Total MB Prev]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X12','Varchar(Max)','V',NULL,'[X12]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X13','Varchar(Max)','V',NULL,'[X13]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X14','Varchar(Max)','V',NULL,'[X14]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X15','Varchar(Max)','V',NULL,'[X15]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X16','Varchar(Max)','V',NULL,'[X16]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X17','Varchar(Max)','V',NULL,'[X17]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','exArea','Varchar(Max)','V',NULL,'[exArea]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X18','Varchar(Max)','V',NULL,'[X18]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X19','Varchar(Max)','V',NULL,'[X19]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X20','Varchar(Max)','V',NULL,'[X20]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X21','Varchar(Max)','V',NULL,'[X21]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X22','Varchar(Max)','V',NULL,'[X22]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X23','Varchar(Max)','V',NULL,'[X23]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X24','Varchar(Max)','V',NULL,'[X24]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X25','Varchar(Max)','V',NULL,'[X25]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X26','Varchar(Max)','V',NULL,'[X26]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X27','Varchar(Max)','V',NULL,'[X27]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X28','Varchar(Max)','V',NULL,'[X28]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X29','Varchar(Max)','V',NULL,'[X29]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X30','Varchar(Max)','V',NULL,'[X30]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X31','Varchar(Max)','V',NULL,'[X31]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X32','Varchar(Max)','V',NULL,'[X32]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X33','Varchar(Max)','V',NULL,'[X33]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X34','Varchar(Max)','V',NULL,'[X34]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X35','Varchar(Max)','V',NULL,'[X35]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X36','Varchar(Max)','V',NULL,'[X36]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X37','Varchar(Max)','V',NULL,'[X37]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X38','Varchar(Max)','V',NULL,'[X38]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X39','Varchar(Max)','V',NULL,'[X39]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X40','Varchar(Max)','V',NULL,'[X40]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X41','Varchar(Max)','V',NULL,'[X41]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X42','Varchar(Max)','V',NULL,'[X42]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X43','Varchar(Max)','V',NULL,'[X43]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X44','Varchar(Max)','V',NULL,'[X44]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X45','Varchar(Max)','V',NULL,'[X45]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X46','Varchar(Max)','V',NULL,'[X46]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X47','Varchar(Max)','V',NULL,'[X47]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X48','Varchar(Max)','V',NULL,'[X48]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X49','Varchar(Max)','V',NULL,'[X49]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES('fss_revenue_mb_JSON','X50','Varchar(Max)','V',NULL,'[X50]','Y')



 

/*

create schema fss

select * from generic_json_detail where json_column_data_type ='date'

--drop table fss.stage_fss_reportingperiod

SET ANSI_NULLS ON

GO

 

SET QUOTED_IDENTIFIER ON

GO

*/ 

CREATE TABLE [fss].[stage_fss_revenue_mb]

(

    [rssk] [bigint] IDENTITY(1,1) NOT NULL,

    [JSON_Attribute] [varchar](8000) NULL

)

WITH

(

    DISTRIBUTION = ROUND_ROBIN,

    CLUSTERED COLUMNSTORE INDEX

)

GO

 

/*


select * from  fss.stage_fss_revenue
*/
 

 

 

--TO BE EXECUTED ONLY WHEN IT IS  READY FOR QA--

/*

 

 

declare @count int;

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_certificatestatus_coconsole_master_pipeline' and stage_table_name = 'gpd.NCSA_procurement_status' and reprocessing_table_name = 'gpd.reprocess_dim_entp_material_request_milestone'

    if isnull(@count,0) = 0

begin

        insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)

     values ('pl_certificatestatus_coconsole_master_pipeline','gpd.NCSA_procurement_status','gpd.reprocess_dim_entp_material_request_milestone','dbo.dim_entp_material_request_milestone')

end

 

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_procurement_status_excel_master_pipeline' and stage_table_name = 'gpd.NCSA_procurement_status' and reprocessing_table_name = 'gpd.reprocess_dim_entp_material_request_header'

    if isnull(@count,0) = 0

begin

        insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)

     values ('pl_procurement_status_excel_master_pipeline','gpd.NCSA_procurement_status','gpd.reprocess_dim_entp_material_request_header','dbo.dim_entp_material_request_header')

end;

 
 */
 

