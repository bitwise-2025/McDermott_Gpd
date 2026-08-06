insert into plp_parameter (parameter_code,parameter_type_code,description,parameter_data_type,max_no_values,parameter_size,comment,active,touched_by,touched_dtm) values('p6_activity_attributes_start_date','PIPELINE_INCREMENTAL','pl_resource_spread_direct_p6_activity_attributes','T',1,50,NULL,1,'aditya.anand2@mcdermott.com','2025-04-08')

GO

insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_resource_spread_direct_p6_activity_attributes','NCSA','pl_resource_spread_direct_p6_activity_attributes',NULL,'1','aditya.anand2@mcdermott.com','2025-11-19 06:42:19.043',47)


GO

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_p6_activity_attributes','NetworkFolder','p6_activity_attributes_start_date',1,'p6_activity_attributes_start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-11-19 06:42:19.043')


GO


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('p6_activity_attributes_start_date','1950-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_p6_activity_attributes','NetworkFolder')


GO

CREATE TABLE [pxd].[p6_activity_attributes](
	[p6aaid] [int] NULL,
	[p6apid] [int] NULL,
	[activity_code_description] [varchar](500) NULL,
	[activity_code_object_id] [varchar](500) NULL,
	[activity_code_type_name] [varchar](500) NULL,
	[activity_code_type_object_id] [varchar](500) NULL,
	[activity_code_type_scope] [varchar](500) NULL,
	[activity_code_value] [varchar](500) NULL,
	[activity_id] [varchar](500) NULL,
	[activity_name] [varchar](500) NULL,
	[activity_object_id] [varchar](500) NULL,
	[is_base_line] [varchar](10) NULL,
	[is_template] [varchar](10) NULL,
	[wbs_object_id] [varchar](500) NULL,
	[created_dttm] [datetime] NULL,
	[source_name] [varchar](500) NULL,
	[sub_source_name] [varchar](500) NULL,
	[created_date_time] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO





CREATE NONCLUSTERED INDEX [p6_activity_attributes_ind1] ON [pxd].[p6_activity_attributes]
(
	[p6apid] ASC,
	[activity_code_object_id] ASC
)WITH (DROP_EXISTING = OFF)
GO


CREATE NONCLUSTERED INDEX [p6_activity_attributes_ind2] ON [pxd].[p6_activity_attributes]
(
	[created_dttm] ASC
)WITH (DROP_EXISTING = OFF)
GO






CREATE VIEW [pxd].[p6_activity_attributes_v] AS 
SELECT [p6aaid]
      ,[p6apid]
      ,[activity_code_description]
      ,[activity_code_object_id]
      ,[activity_code_type_name]
      ,[activity_code_type_object_id]
      ,[activity_code_type_scope]
      ,[activity_code_value]
      ,[activity_id]
      ,[activity_name]
      ,[activity_object_id]
      ,[is_base_line]
      ,[is_template]
      ,[wbs_object_id]
      ,[created_dttm]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
  FROM [pxd].[p6_activity_attributes]
  
GO










