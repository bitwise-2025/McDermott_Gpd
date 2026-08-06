insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_gl_code_combinations','NCSA','pl_gl_code_combinations',NULL,'1','aditya.anand2@mcdermott.com','2025-03-06 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_gl_code_combinations','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-06 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_gl_code_combinations','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-06 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_gl_code_combinations','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-06 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_gl_code_combinations','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-06 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_gl_code_combinations','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-06 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_gl_code_combinations','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-06 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_gl_code_combinations','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-06 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_gl_code_combinations','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-03-06 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_gl_code_combinations','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')


GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Gl_code_combinations',1,'aditya.anand2@mcdermott.com',@dd,'pl_gl_code_combinations','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Gl_Code_Combinations_Data',1,'aditya.anand2@mcdermott.com',@dd,'pl_gl_code_combinations','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_gl_code_combinations','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_gl_code_combinations','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2017-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_gl_code_combinations','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_gl_code_combinations','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/Invoice Inquiry Dashboard/GL_CODE_COMBINATIONS.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_gl_code_combinations','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_gl_code_combinations','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','365',1,'aditya.anand2@mcdermott.com',@dd,'pl_gl_code_combinations','NetworkFolder')


GO


CREATE TABLE [rpy].[Gl_code_combinations_stage]
(
CODE_COMBINATION_ID	[varchar](500) NULL,
CONCATENATED_SEGMENTS	[varchar](4000) NULL,
CONCAT_DESCRIPTION	[varchar](4000) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
SEGM1_DESCRIPTION	[varchar](500) NULL,
SEGM2_DESCRIPTION	[varchar](500) NULL,
SEGM3_DESCRIPTION	[varchar](500) NULL,
SEGM4_DESCRIPTION	[varchar](500) NULL,
SEGM5_DESCRIPTION	[varchar](500) NULL,
SEGM6_DESCRIPTION	[varchar](500) NULL,
SEGM7_DESCRIPTION	[varchar](500) NULL,
SEGM8_DESCRIPTION	[varchar](500) NULL,
SEGM9_DESCRIPTION	[varchar](500) NULL,
SEGMENT1	[varchar](500) NULL,
SEGMENT2	[varchar](500) NULL,
SEGMENT3	[varchar](500) NULL,
SEGMENT4	[varchar](500) NULL,
SEGMENT5	[varchar](500) NULL,
SEGMENT6	[varchar](500) NULL,
SEGMENT7	[varchar](500) NULL,
SEGMENT8	[varchar](500) NULL,
SEGMENT9	[varchar](500) NULL,
source_name	[varchar](500) NULL,
sub_source_name	[varchar](500) NULL,
created_date_time	[datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO






CREATE TABLE [rpy].[Gl_code_combinations]
(
CODE_COMBINATION_ID	[varchar](500) NULL,
CONCATENATED_SEGMENTS	[varchar](4000) NULL,
CONCAT_DESCRIPTION	[varchar](4000) NULL,
LAST_UPDATE_DATE	[datetime] NULL,
SEGM1_DESCRIPTION	[varchar](500) NULL,
SEGM2_DESCRIPTION	[varchar](500) NULL,
SEGM3_DESCRIPTION	[varchar](500) NULL,
SEGM4_DESCRIPTION	[varchar](500) NULL,
SEGM5_DESCRIPTION	[varchar](500) NULL,
SEGM6_DESCRIPTION	[varchar](500) NULL,
SEGM7_DESCRIPTION	[varchar](500) NULL,
SEGM8_DESCRIPTION	[varchar](500) NULL,
SEGM9_DESCRIPTION	[varchar](500) NULL,
SEGMENT1	[varchar](500) NULL,
SEGMENT2	[varchar](500) NULL,
SEGMENT3	[varchar](500) NULL,
SEGMENT4	[varchar](500) NULL,
SEGMENT5	[varchar](500) NULL,
SEGMENT6	[varchar](500) NULL,
SEGMENT7	[varchar](500) NULL,
SEGMENT8	[varchar](500) NULL,
SEGMENT9	[varchar](500) NULL,
source_name	[varchar](500) NULL,
sub_source_name	[varchar](500) NULL,
created_date_time	[datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO




Create View [rpy].[Gl_code_combinations_v] as
SELECT a.[CODE_COMBINATION_ID]
      ,[CONCATENATED_SEGMENTS]
      ,[CONCAT_DESCRIPTION]
      ,a.[LAST_UPDATE_DATE]
      ,[SEGM1_DESCRIPTION]
      ,[SEGM2_DESCRIPTION]
      ,[SEGM3_DESCRIPTION]
      ,[SEGM4_DESCRIPTION]
      ,[SEGM5_DESCRIPTION]
      ,[SEGM6_DESCRIPTION]
      ,[SEGM7_DESCRIPTION]
      ,[SEGM8_DESCRIPTION]
      ,[SEGM9_DESCRIPTION]
      ,[SEGMENT1]
      ,[SEGMENT2]
      ,[SEGMENT3]
      ,[SEGMENT4]
      ,[SEGMENT5]
      ,[SEGMENT6]
      ,[SEGMENT7]
      ,[SEGMENT8]
      ,[SEGMENT9]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Gl_code_combinations] a,
  (SELECT CODE_COMBINATION_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Gl_code_combinations] GROUP BY CODE_COMBINATION_ID) b
WHERE a.CODE_COMBINATION_ID = b.CODE_COMBINATION_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE

GO

CREATE NONCLUSTERED INDEX [idx_Gl_code_combinations_CODE_COMBINATION_ID_LAST_UPDATE_DATE] ON [rpy].[Gl_code_combinations]
(
	[CODE_COMBINATION_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO

