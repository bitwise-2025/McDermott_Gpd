insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_po_line_types','NCSA','pl_po_line_types',NULL,'1','aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043',4)


GO


--source_to_stage


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_types','NetworkFolder','source_name',1,'source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_types','NetworkFolder','sub_source_name',2,'sub_source_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_types','NetworkFolder','output_file_system',3,'output_file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_types','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_types','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_types','NetworkFolder','start_date',6,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_types','NetworkFolder','end_date',7,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_types','NetworkFolder','report_path',8,'report_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-31 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_types','NetworkFolder','number_of_days',9,'number_of_days','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-02-25 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_types','NetworkFolder','client_id',10,'client_id','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_types','NetworkFolder','client_secret',11,'client_secret','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_types','NetworkFolder','scope',12,'scope','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_po_line_types','NetworkFolder','token_url',13,'token_url','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-12-17 06:16:12.197')



GO

--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Po_Line_Types',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_types','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/Payment_Dashboard/Po_Line_Types',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_types','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_types','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_types','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2019-01-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_types','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_types','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/MDR PO and Receipts Details/PO_LINE_TYPES.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_types','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_types','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','30',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_types','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_id','7ba0d0715e9b48fa92fe905dc1504e22',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_types','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('client_secret','idcscs-1f32688a-cb2a-4386-b6c4-02e07d01928c',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_types','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('scope','https://edsv-dev2.fa.us2.oraclecloud.com:443/',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_types','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('token_url','https://idcs-5e75f6e22be947de989d7c4f86d59b78.identity.oraclecloud.com/oauth2/v1/token',1,'aditya.anand2@mcdermott.com',@dd,'pl_po_line_types','NetworkFolder')


GO


CREATE TABLE [rpy].[Po_Line_Types_stage]
(

ROW_ID	[varchar](4000) NULL,
ATTRIBUTE3	[varchar](4000) NULL,
ATTRIBUTE4	[varchar](4000) NULL,
ATTRIBUTE5	[varchar](4000) NULL,
ATTRIBUTE6	[varchar](4000) NULL,
ATTRIBUTE7	[varchar](4000) NULL,
ATTRIBUTE8	[varchar](4000) NULL,
ATTRIBUTE9	[varchar](4000) NULL,
ATTRIBUTE10	[varchar](4000) NULL,
ATTRIBUTE11	[varchar](4000) NULL,
ATTRIBUTE12	[varchar](4000) NULL,
ATTRIBUTE13	[varchar](4000) NULL,
ATTRIBUTE14	[varchar](4000) NULL,
ATTRIBUTE15	[varchar](4000) NULL,
ATTRIBUTE16	[varchar](4000) NULL,
ATTRIBUTE17	[varchar](4000) NULL,
ATTRIBUTE18	[varchar](4000) NULL,
ATTRIBUTE19	[varchar](4000) NULL,
ATTRIBUTE20	[varchar](4000) NULL,
ATTRIBUTE_NUMBER1	[varchar](4000) NULL,
ATTRIBUTE_NUMBER2	[varchar](4000) NULL,
ATTRIBUTE_NUMBER3	[varchar](4000) NULL,
ATTRIBUTE_NUMBER4	[varchar](4000) NULL,
ATTRIBUTE_NUMBER5	[varchar](4000) NULL,
ATTRIBUTE_NUMBER6	[varchar](4000) NULL,
ATTRIBUTE_NUMBER7	[varchar](4000) NULL,
ATTRIBUTE_NUMBER8	[varchar](4000) NULL,
ATTRIBUTE_NUMBER9	[varchar](4000) NULL,
ATTRIBUTE_NUMBER10	[varchar](4000) NULL,
ATTRIBUTE_DATE1	datetime NULL,
ATTRIBUTE_DATE2	datetime NULL,
ATTRIBUTE_DATE3	datetime NULL,
ATTRIBUTE_DATE4	datetime NULL,
ATTRIBUTE_DATE5	datetime NULL,
ATTRIBUTE_DATE6	datetime NULL,
ATTRIBUTE_DATE7	datetime NULL,
ATTRIBUTE_DATE8	datetime NULL,
ATTRIBUTE_DATE9	datetime NULL,
ATTRIBUTE_DATE10	datetime NULL,
ATTRIBUTE_TIMESTAMP1	datetime NULL,
ATTRIBUTE_TIMESTAMP2	datetime NULL,
ATTRIBUTE_TIMESTAMP3	datetime NULL,
ATTRIBUTE_TIMESTAMP4	datetime NULL,
ATTRIBUTE_TIMESTAMP5	datetime NULL,
ATTRIBUTE_TIMESTAMP6	datetime NULL,
ATTRIBUTE_TIMESTAMP7	datetime NULL,
ATTRIBUTE_TIMESTAMP8	datetime NULL,
ATTRIBUTE_TIMESTAMP9	datetime NULL,
ATTRIBUTE_TIMESTAMP10	datetime NULL,
OUTSIDE_OPERATION_FLAG	[varchar](4000) NULL,
RECEIVE_CLOSE_TOLERANCE	[varchar](4000) NULL,
LINE_TYPE_ID	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
ORDER_TYPE_LOOKUP_CODE	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
CATEGORY_ID	[varchar](4000) NULL,
UNIT_OF_MEASURE	[varchar](4000) NULL,
UNIT_PRICE	[varchar](4000) NULL,
RECEIVING_FLAG	[varchar](4000) NULL,
INACTIVE_DATE	datetime NULL,
ATTRIBUTE_CATEGORY	[varchar](4000) NULL,
ATTRIBUTE1	[varchar](4000) NULL,
ATTRIBUTE2	[varchar](4000) NULL,
LINE_TYPE	[varchar](4000) NULL,
DESCRIPTION	[varchar](4000) NULL,
PURCHASE_BASIS	[varchar](4000) NULL,
MATCHING_BASIS	[varchar](4000) NULL,
UOM_CODE	[varchar](4000) NULL,
INSPECTION_REQUIRED_FLAG	[varchar](4000) NULL,
MATCH_OPTION	[varchar](4000) NULL,
LINE_TYPE_CODE	[varchar](4000) NULL,
PRODUCT_TYPE	[varchar](4000) NULL,
CREDIT_FLAG	[varchar](4000) NULL,
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






CREATE TABLE [rpy].[Po_Line_Types]
(

ROW_ID	[varchar](4000) NULL,
ATTRIBUTE3	[varchar](4000) NULL,
ATTRIBUTE4	[varchar](4000) NULL,
ATTRIBUTE5	[varchar](4000) NULL,
ATTRIBUTE6	[varchar](4000) NULL,
ATTRIBUTE7	[varchar](4000) NULL,
ATTRIBUTE8	[varchar](4000) NULL,
ATTRIBUTE9	[varchar](4000) NULL,
ATTRIBUTE10	[varchar](4000) NULL,
ATTRIBUTE11	[varchar](4000) NULL,
ATTRIBUTE12	[varchar](4000) NULL,
ATTRIBUTE13	[varchar](4000) NULL,
ATTRIBUTE14	[varchar](4000) NULL,
ATTRIBUTE15	[varchar](4000) NULL,
ATTRIBUTE16	[varchar](4000) NULL,
ATTRIBUTE17	[varchar](4000) NULL,
ATTRIBUTE18	[varchar](4000) NULL,
ATTRIBUTE19	[varchar](4000) NULL,
ATTRIBUTE20	[varchar](4000) NULL,
ATTRIBUTE_NUMBER1	[varchar](4000) NULL,
ATTRIBUTE_NUMBER2	[varchar](4000) NULL,
ATTRIBUTE_NUMBER3	[varchar](4000) NULL,
ATTRIBUTE_NUMBER4	[varchar](4000) NULL,
ATTRIBUTE_NUMBER5	[varchar](4000) NULL,
ATTRIBUTE_NUMBER6	[varchar](4000) NULL,
ATTRIBUTE_NUMBER7	[varchar](4000) NULL,
ATTRIBUTE_NUMBER8	[varchar](4000) NULL,
ATTRIBUTE_NUMBER9	[varchar](4000) NULL,
ATTRIBUTE_NUMBER10	[varchar](4000) NULL,
ATTRIBUTE_DATE1	datetime NULL,
ATTRIBUTE_DATE2	datetime NULL,
ATTRIBUTE_DATE3	datetime NULL,
ATTRIBUTE_DATE4	datetime NULL,
ATTRIBUTE_DATE5	datetime NULL,
ATTRIBUTE_DATE6	datetime NULL,
ATTRIBUTE_DATE7	datetime NULL,
ATTRIBUTE_DATE8	datetime NULL,
ATTRIBUTE_DATE9	datetime NULL,
ATTRIBUTE_DATE10	datetime NULL,
ATTRIBUTE_TIMESTAMP1	datetime NULL,
ATTRIBUTE_TIMESTAMP2	datetime NULL,
ATTRIBUTE_TIMESTAMP3	datetime NULL,
ATTRIBUTE_TIMESTAMP4	datetime NULL,
ATTRIBUTE_TIMESTAMP5	datetime NULL,
ATTRIBUTE_TIMESTAMP6	datetime NULL,
ATTRIBUTE_TIMESTAMP7	datetime NULL,
ATTRIBUTE_TIMESTAMP8	datetime NULL,
ATTRIBUTE_TIMESTAMP9	datetime NULL,
ATTRIBUTE_TIMESTAMP10	datetime NULL,
OUTSIDE_OPERATION_FLAG	[varchar](4000) NULL,
RECEIVE_CLOSE_TOLERANCE	[varchar](4000) NULL,
LINE_TYPE_ID	[varchar](4000) NULL,
LAST_UPDATE_DATE	datetime NULL,
LAST_UPDATED_BY	[varchar](4000) NULL,
ORDER_TYPE_LOOKUP_CODE	[varchar](4000) NULL,
LAST_UPDATE_LOGIN	[varchar](4000) NULL,
CREATION_DATE	datetime NULL,
CREATED_BY	[varchar](4000) NULL,
CATEGORY_ID	[varchar](4000) NULL,
UNIT_OF_MEASURE	[varchar](4000) NULL,
UNIT_PRICE	[varchar](4000) NULL,
RECEIVING_FLAG	[varchar](4000) NULL,
INACTIVE_DATE	datetime NULL,
ATTRIBUTE_CATEGORY	[varchar](4000) NULL,
ATTRIBUTE1	[varchar](4000) NULL,
ATTRIBUTE2	[varchar](4000) NULL,
LINE_TYPE	[varchar](4000) NULL,
DESCRIPTION	[varchar](4000) NULL,
PURCHASE_BASIS	[varchar](4000) NULL,
MATCHING_BASIS	[varchar](4000) NULL,
UOM_CODE	[varchar](4000) NULL,
INSPECTION_REQUIRED_FLAG	[varchar](4000) NULL,
MATCH_OPTION	[varchar](4000) NULL,
LINE_TYPE_CODE	[varchar](4000) NULL,
PRODUCT_TYPE	[varchar](4000) NULL,
CREDIT_FLAG	[varchar](4000) NULL,
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



Create View [rpy].[Po_Line_Types_v] as
SELECT [ROW_ID]
      ,[ATTRIBUTE3]
      ,[ATTRIBUTE4]
      ,[ATTRIBUTE5]
      ,[ATTRIBUTE6]
      ,[ATTRIBUTE7]
      ,[ATTRIBUTE8]
      ,[ATTRIBUTE9]
      ,[ATTRIBUTE10]
      ,[ATTRIBUTE11]
      ,[ATTRIBUTE12]
      ,[ATTRIBUTE13]
      ,[ATTRIBUTE14]
      ,[ATTRIBUTE15]
      ,[ATTRIBUTE16]
      ,[ATTRIBUTE17]
      ,[ATTRIBUTE18]
      ,[ATTRIBUTE19]
      ,[ATTRIBUTE20]
      ,[ATTRIBUTE_NUMBER1]
      ,[ATTRIBUTE_NUMBER2]
      ,[ATTRIBUTE_NUMBER3]
      ,[ATTRIBUTE_NUMBER4]
      ,[ATTRIBUTE_NUMBER5]
      ,[ATTRIBUTE_NUMBER6]
      ,[ATTRIBUTE_NUMBER7]
      ,[ATTRIBUTE_NUMBER8]
      ,[ATTRIBUTE_NUMBER9]
      ,[ATTRIBUTE_NUMBER10]
      ,[ATTRIBUTE_DATE1]
      ,[ATTRIBUTE_DATE2]
      ,[ATTRIBUTE_DATE3]
      ,[ATTRIBUTE_DATE4]
      ,[ATTRIBUTE_DATE5]
      ,[ATTRIBUTE_DATE6]
      ,[ATTRIBUTE_DATE7]
      ,[ATTRIBUTE_DATE8]
      ,[ATTRIBUTE_DATE9]
      ,[ATTRIBUTE_DATE10]
      ,[ATTRIBUTE_TIMESTAMP1]
      ,[ATTRIBUTE_TIMESTAMP2]
      ,[ATTRIBUTE_TIMESTAMP3]
      ,[ATTRIBUTE_TIMESTAMP4]
      ,[ATTRIBUTE_TIMESTAMP5]
      ,[ATTRIBUTE_TIMESTAMP6]
      ,[ATTRIBUTE_TIMESTAMP7]
      ,[ATTRIBUTE_TIMESTAMP8]
      ,[ATTRIBUTE_TIMESTAMP9]
      ,[ATTRIBUTE_TIMESTAMP10]
      ,[OUTSIDE_OPERATION_FLAG]
      ,[RECEIVE_CLOSE_TOLERANCE]
      ,a.[LINE_TYPE_ID]
      ,a.[LAST_UPDATE_DATE]
      ,[LAST_UPDATED_BY]
      ,[ORDER_TYPE_LOOKUP_CODE]
      ,[LAST_UPDATE_LOGIN]
      ,[CREATION_DATE]
      ,[CREATED_BY]
      ,[CATEGORY_ID]
      ,[UNIT_OF_MEASURE]
      ,[UNIT_PRICE]
      ,[RECEIVING_FLAG]
      ,[INACTIVE_DATE]
      ,[ATTRIBUTE_CATEGORY]
      ,[ATTRIBUTE1]
      ,[ATTRIBUTE2]
      ,[LINE_TYPE]
      ,[DESCRIPTION]
      ,[PURCHASE_BASIS]
      ,[MATCHING_BASIS]
      ,[UOM_CODE]
      ,[INSPECTION_REQUIRED_FLAG]
      ,[MATCH_OPTION]
      ,[LINE_TYPE_CODE]
      ,[PRODUCT_TYPE]
      ,[CREDIT_FLAG]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [rpy].[Po_Line_Types] a,
  (SELECT LINE_TYPE_ID, max(LAST_UPDATE_DATE) as LAST_UPDATE_DATE from [rpy].[Po_Line_Types] GROUP BY LINE_TYPE_ID) b
WHERE a.LINE_TYPE_ID = b.LINE_TYPE_ID AND a.LAST_UPDATE_DATE = b.LAST_UPDATE_DATE

GO



CREATE NONCLUSTERED INDEX [idx_Po_Line_Types_LINE_TYPE_ID_LAST_UPDATE_DATE] ON [rpy].[Po_Line_Types]
(
	[LINE_TYPE_ID],[LAST_UPDATE_DATE] ASC
)WITH (DROP_EXISTING = OFF)
GO




