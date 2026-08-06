DROP TABLE [gpd].[ECM_EmployeesData]
GO
CREATE TABLE [gpd].[ECM_EmployeesData]
(
	[employeesdata_country] [varchar](500) NULL,
	[missingfolders] [varchar](4000) NULL,
	[employeesdata_modifiedAt] [varchar](500) NULL,
	[employeesdata_oracleID] [varchar](500) NULL,
	[employeesdata_employeeStatus] [varchar](500) NULL,
	[employeesdata_terminationDate] [varchar](500) NULL,
	[employeesdata_createdAt] [varchar](500) NULL,
	[employeesdata_sitename] [varchar](500) NULL,
	[employeesdata_siteid] [varchar](500) NULL,
	[employeesdata_noderef] [varchar](500) NULL,
	[employeesdata_modifiedBy] [varchar](500) NULL,
	[employeesdata_businesslinetwo] [varchar](500) NULL,
	[employeesdata_area] [varchar](500) NULL,
	[employeesdata_documentCreationDate] [varchar](500) NULL,
	[employeesdata_allowTermination] [varchar](500) NULL,
	[employeesdata_hireDate] [varchar](500) NULL,
	[employeesdata_author] [varchar](500) NULL,
	[employeesdata_isExecutive] [varchar](500) NULL,
	[employeesdata_businesslineone] [varchar](500) NULL,
	[employeesdata_planInactiveDate] [varchar](500) NULL,
	[employeesdata_createdBy] [varchar](500) NULL,
	[employeesdata_legacyID] [varchar](500) NULL,
	[employeesdata_location] [varchar](500) NULL,
	[recorddetails_identifier] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionAuthority] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionActionAsOf] [varchar](500) NULL,
	[recorddetails_recordOriginatingLocation] [varchar](500) NULL,
	[recorddetails_rootNodeRef] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionEventsEligible] [varchar](500) NULL,
	[recorddetails_recordOriginatingCreationDate] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionInstructions] [varchar](500) NULL,
	[recorddetails_holddetails] [varchar](4000) NULL,
	[recorddetails_recordSearchDispositionPeriod] [varchar](500) NULL,
	[recorddetails_recordSearchHasDispositionSchedule] [varchar](500) NULL,
	[recorddetails_recordOriginatingUserId] [varchar](500) NULL,
	[recorddetails_recordSearchVitalRecordReviewPeriod] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionEvents] [varchar](500) NULL,
	[recorddetails_frozenBy] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionActionName] [varchar](500) NULL,
	[recorddetails_recordSearchVitalRecordReviewPeriodExpression] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionPeriodExpression] [varchar](500) NULL,
	[recorddetails_frozenAt] [varchar](500) NULL,
	[recorddetails_origionalName] [varchar](500) NULL,
	[recorddetails_cutoffdate] [varchar](500) NULL,
	[documents_name] [varchar](8000) NULL,
	[documents_noofpages] [varchar](500) NULL,
	[documents_noderef] [varchar](500) NULL,
	[subfolders_name] [varchar](500) NULL,
	[subfolders_noderef] [varchar](500) NULL,
	[employeesdata_directdocuments] [varchar](8000) NULL,
	[employeesdata_employeename] [varchar](500) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


-----------------------------------------------------------------------------------------------------------


CREATE VIEW [gpd].[stage_ecmhr_detail_v]
AS select ROW_NUMBER() OVER (ORDER BY employeesdata_legacyID) as stage_ecmhr_detail_id 
,employeesdata_employeename as employee_name
,employeesdata_oracleID as oracle_id
,employeesdata_legacyID as legacyid
,employeesdata_area as area
,employeesdata_location as location
,subfolders_name as folder_name
,documents_name as file_name
,documents_noofpages as no_of_pages
,employeesdata_modifiedBy as sub_folder_modified_by
,employeesdata_modifiedAt as sub_folder_modified_date
,employeesdata_createdBy as sub_folder_created_by
,employeesdata_createdAt as sub_folder_created_date
,recorddetails_recordSearchDispositionAuthority
,recorddetails_recordSearchDispositionActionAsOf
,recorddetails_recordOriginatingLocation
,recorddetails_rootNodeRef
,recorddetails_recordSearchDispositionEventsEligible
,recorddetails_recordOriginatingCreationDate
,recorddetails_recordSearchDispositionInstructions
,recorddetails_holddetails
,recorddetails_recordSearchDispositionPeriod
,recorddetails_recordSearchHasDispositionSchedule
,recorddetails_recordOriginatingUserId
,recorddetails_recordSearchVitalRecordReviewPeriod
,recorddetails_recordSearchDispositionEvents
,recorddetails_frozenBy
,recorddetails_recordSearchDispositionActionName
,recorddetails_recordSearchVitalRecordReviewPeriodExpression
,recorddetails_recordSearchDispositionPeriodExpression
,recorddetails_frozenAt
,recorddetails_origionalName
,recorddetails_cutoffdate
,missingfolders

from (
select distinct 
employeesdata_employeename
,employeesdata_oracleID
,employeesdata_legacyID
,employeesdata_area
,employeesdata_location
,subfolders_name
,documents_name
,documents_noofpages
,employeesdata_modifiedBy
,employeesdata_modifiedAt
,employeesdata_createdBy
,employeesdata_createdAt
,recorddetails_recordSearchDispositionAuthority
,recorddetails_recordSearchDispositionActionAsOf
,recorddetails_recordOriginatingLocation
,recorddetails_rootNodeRef
,recorddetails_recordSearchDispositionEventsEligible
,recorddetails_recordOriginatingCreationDate
,recorddetails_recordSearchDispositionInstructions
,recorddetails_holddetails
,recorddetails_recordSearchDispositionPeriod
,recorddetails_recordSearchHasDispositionSchedule
,recorddetails_recordOriginatingUserId
,recorddetails_recordSearchVitalRecordReviewPeriod
,recorddetails_recordSearchDispositionEvents
,recorddetails_frozenBy
,recorddetails_recordSearchDispositionActionName
,recorddetails_recordSearchVitalRecordReviewPeriodExpression
,recorddetails_recordSearchDispositionPeriodExpression
,recorddetails_frozenAt
,recorddetails_origionalName
,recorddetails_cutoffdate
,missingfolders

from [gpd].[ECM_EmployeesData] )a;


GO



-----------------------------------------------------------------------------------------------------------


DROP TABLE [gpd].[reprocess_dim_ecmhr_detail]
GO
CREATE TABLE [gpd].[reprocess_dim_ecmhr_detail]
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[employee_name] [varchar](500) NULL,
	[oracle_id] [varchar](500) NULL,
	[legacyid] [varchar](500) NULL,
	[area] [varchar](500) NULL,
	[location] [varchar](500) NULL,
	[folder_name] [varchar](500) NULL,
	[file_name] [varchar](8000) NULL,
	[no_of_pages] [varchar](500) NULL,
	[sub_folder_modified_by] [varchar](500) NULL,
	[sub_folder_modified_date] [varchar](500) NULL,
	[sub_folder_created_by] [varchar](500) NULL,
	[sub_folder_created_date] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionAuthority] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionActionAsOf] [varchar](500) NULL,
	[recorddetails_recordOriginatingLocation] [varchar](500) NULL,
	[recorddetails_rootNodeRef] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionEventsEligible] [varchar](500) NULL,
	[recorddetails_recordOriginatingCreationDate] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionInstructions] [varchar](500) NULL,
	[recorddetails_holddetails] [varchar](4000) NULL,
	[recorddetails_recordSearchDispositionPeriod] [varchar](500) NULL,
	[recorddetails_recordSearchHasDispositionSchedule] [varchar](500) NULL,
	[recorddetails_recordOriginatingUserId] [varchar](500) NULL,
	[recorddetails_recordSearchVitalRecordReviewPeriod] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionEvents] [varchar](500) NULL,
	[recorddetails_frozenBy] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionActionName] [varchar](500) NULL,
	[recorddetails_recordSearchVitalRecordReviewPeriodExpression] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionPeriodExpression] [varchar](500) NULL,
	[recorddetails_frozenAt] [varchar](500) NULL,
	[recorddetails_origionalName] [varchar](500) NULL,
	[recorddetails_cutoffdate] [varchar](500) NULL,
	[missingfolders] [varchar](4000) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO





-----------------------------------------------------------------------------------------------------------

DROP TABLE [dbo].[dim_ecmhr_detail]
GO
CREATE TABLE [dbo].[dim_ecmhr_detail]
(
	[dim_ecmhr_detail_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ecmhr_detail_nk] [int] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[employee_name] [varchar](500) NULL,
	[oracle_id] [varchar](500) NULL,
	[legacyid] [varchar](500) NULL,
	[area] [varchar](500) NULL,
	[location] [varchar](500) NULL,
	[folder_name] [varchar](500) NULL,
	[file_name] [varchar](8000) NULL,
	[no_of_pages] [varchar](500) NULL,
	[sub_folder_modified_by] [varchar](500) NULL,
	[sub_folder_modified_date] [varchar](500) NULL,
	[sub_folder_created_by] [varchar](500) NULL,
	[sub_folder_created_date] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionAuthority] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionActionAsOf] [varchar](500) NULL,
	[recorddetails_recordOriginatingLocation] [varchar](500) NULL,
	[recorddetails_rootNodeRef] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionEventsEligible] [varchar](500) NULL,
	[recorddetails_recordOriginatingCreationDate] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionInstructions] [varchar](500) NULL,
	[recorddetails_holddetails] [varchar](4000) NULL,
	[recorddetails_recordSearchDispositionPeriod] [varchar](500) NULL,
	[recorddetails_recordSearchHasDispositionSchedule] [varchar](500) NULL,
	[recorddetails_recordOriginatingUserId] [varchar](500) NULL,
	[recorddetails_recordSearchVitalRecordReviewPeriod] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionEvents] [varchar](500) NULL,
	[recorddetails_frozenBy] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionActionName] [varchar](500) NULL,
	[recorddetails_recordSearchVitalRecordReviewPeriodExpression] [varchar](500) NULL,
	[recorddetails_recordSearchDispositionPeriodExpression] [varchar](500) NULL,
	[recorddetails_frozenAt] [varchar](500) NULL,
	[recorddetails_origionalName] [varchar](500) NULL,
	[recorddetails_cutoffdate] [varchar](500) NULL,
	[missingfolders] [varchar](4000) NULL,
	[dim_ecmhr_header_nk] [int] NULL,
 CONSTRAINT [legacy_idpk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ecmhr_detail_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO






-----------------------------------------------------------------------------------------------------------


DROP VIEW [dbo].[dim_ecmhr_detail_active_v]
GO
CREATE VIEW [dbo].[dim_ecmhr_detail_active_v]
AS SELECT 
[dim_ecmhr_detail_sk]
,[dim_ecmhr_detail_nk]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[folder_name] as [Folder Name]
,[file_name] as [File Name]
,[no_of_pages] as [No Of Pages]
,[sub_folder_modified_by] as [Sub Folder Modified By]
,[sub_folder_modified_date] as [Sub Folder Modified Date]
,[sub_folder_created_by] as [Sub Folder Created By]
,[sub_folder_created_date] as [Sub Folder Created Date]
,[recorddetails_recordSearchDispositionAuthority] as [RecordSearchDispositionAuthority]
,[recorddetails_recordSearchDispositionActionAsOf] as [RecordSearchDispositionActionAsOf]
,[recorddetails_recordOriginatingLocation] as [RecordOriginatingLocation]
,[recorddetails_rootNodeRef] as [RootNodeRef]
,[recorddetails_recordSearchDispositionEventsEligible] as [RecordSearchDispositionEventsEligible]
,[recorddetails_recordOriginatingCreationDate] as [RecordOriginatingCreationDate]
,[recorddetails_recordSearchDispositionInstructions] as [RecordSearchDispositionInstructions]
,[recorddetails_holddetails] as [Recorddetails Holddetails]
,[recorddetails_recordSearchDispositionPeriod] as [RecordSearchDispositionPeriod]
,[recorddetails_recordSearchHasDispositionSchedule] as [RecordSearchHasDispositionSchedule]
,[recorddetails_recordOriginatingUserId] as [RecordOriginatingUserId]
,[recorddetails_recordSearchVitalRecordReviewPeriod] as [RecordSearchVitalRecordReviewPeriod]
,[recorddetails_recordSearchDispositionEvents] as [RecordSearchDispositionEvents]
,[recorddetails_frozenBy] as [FrozenBy]
,[recorddetails_recordSearchDispositionActionName] as [RecordSearchDispositionActionName]
,[recorddetails_recordSearchVitalRecordReviewPeriodExpression] as [RecordSearchVitalRecordReviewPeriodExpression]
,[recorddetails_recordSearchDispositionPeriodExpression] as [RecordSearchDispositionPeriodExpression]
,[recorddetails_frozenAt] as [FrozenAt]
,[recorddetails_origionalName] as [OrigionalName]
,[recorddetails_cutoffdate] as [Cutoffdate]
,[missingfolders] as [Missing Folders]
,[dim_ecmhr_header_nk]

FROM [dbo].[dim_ecmhr_detail]
where active = 1;
GO


-----------------------------------------------------------------------------------------------------------

Insert into [dbo].[generic_load_detail] values ('dim_ecmhr_detail','missingfolders','varchar(4000)','TEXT','OA','missingfolders',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,340,'Y',NULL)

GO
-----------------------------------------------------------------------------------------------------------

update plp_parameter_value
set parameter_value='2024-11-24 10:11:35.123'
where parameter_code='start_date'
and pipeline_code='pl_ecm_employeesdata_raw_to_synapse'

GO

truncate table dim_ecmhr_geolocation_bl1	
GO
truncate table dim_ecmhr_geolocation_bl2	
GO
truncate table dim_ecmhr_geolocation_area	
GO
truncate table dim_ecmhr_geolocation_country
GO
truncate table dim_ecmhr_geolocation_location
GO
truncate table dim_ecmhr_header			
GO
truncate table dim_ecmhr_detail			
GO






