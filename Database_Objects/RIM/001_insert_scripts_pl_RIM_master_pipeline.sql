DECLARE @Date DATETIME;
DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();
SET @v_pipelinename='pl_RIM_master_pipeline'

--PLP Pipeline
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES (@v_pipelinename,'NCSA','Load RIM from source to stage',NULL,1,'aditya.anand2@mcdermott.com',@Date,47)

GO

--PLP Pipeline Parameter
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','start_date',1,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','file_system',2,'file_system','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','source_directory',3,'source_directory','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','input_file_name',4,'input_file_name','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','version_no',5,'version_no','IN','version number to indicate latest load. Incremented everyrun success or failed',1,'aditya.anand2@mcdermott.com',@Date)

GO

--PLP Pipeline values
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date','2001-05-30 08:09:39',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('source_directory','Development/RIM/Converted from csv to xls test',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_file_name','*.xlsx',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('version_no','0',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
	 
	 
GO

CREATE TABLE [rim].[RIM]
(
	[Name] varchar(4000) NULL,
	[Path] varchar(4000) NULL,
	[Size] varchar(1000) NULL,
	[Files] varchar(1000) NULL,
	[Folders] varchar(1000) NULL,
	[LastModified] varchar(1000) NULL,
	[LastAccessed] varchar(1000) NULL,
	[Owner] varchar(1000) NULL,
	[Permissions] varchar(8000) NULL,
	[zSourceFileName] varchar(4000) NULL,
	[zVersionNo] int NULL,
	[zCreatedDateTime] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


ALTER VIEW [rim].[RIM_V] AS 
SELECT * FROM [rim].[RIM]
WHERE [zSourceFileName] + convert(varchar(20),zVersionNo) in (
SELECT [zSourceFileName] + convert(varchar(20),MAX(zVersionNo)) FROM [rim].[RIM]
GROUP BY [zSourceFileName])

GO



