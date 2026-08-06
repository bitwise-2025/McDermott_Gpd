CREATE VIEW [dbo].[dim_ecmhr_geolocation_bl1_active_v]
AS SELECT 

[dim_ecmhr_geolocation_bl1_sk]
,[dim_ecmhr_geolocation_bl1_nk]
,[business_line_1] as [Business Line 1]
,[business_line_1_description] as [Business Line 1 Description]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
FROM [dbo].[dim_ecmhr_geolocation_bl1]
where active = 1;
GO

-------------------------------------------------------------------

CREATE VIEW [dbo].[dim_ecmhr_geolocation_bl2_active_v]
AS SELECT 

[dim_ecmhr_geolocation_bl2_sk]
,[dim_ecmhr_geolocation_bl2_nk]
,[business_line_2] as [Business Line 2]
,[business_line_2_description] as [Business Line 2 Description]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
FROM [dbo].[dim_ecmhr_geolocation_bl2]
where active = 1;
GO

-------------------------------------------------------------------

CREATE VIEW [dbo].[dim_ecmhr_geolocation_area_active_v]
AS SELECT 

[dim_ecmhr_geolocation_area_sk]
,[dim_ecmhr_geolocation_area_nk]
,[area] as [Area]
,[area_description] as [Area Description]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
FROM [dbo].[dim_ecmhr_geolocation_area]
where active = 1;
GO

-------------------------------------------------------------------

CREATE VIEW [dbo].[dim_ecmhr_geolocation_country_active_v]
AS SELECT 

[dim_ecmhr_geolocation_country_sk]
,[dim_ecmhr_geolocation_country_nk]
,[country] as [Country]
,[country_description] as [Country Description]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
FROM [dbo].[dim_ecmhr_geolocation_country]
where active = 1;
GO

-------------------------------------------------------------------

CREATE VIEW [dbo].[dim_ecmhr_geolocation_location_active_v]
AS SELECT 

[dim_ecmhr_geolocation_location_sk]
,[dim_ecmhr_geolocation_location_nk]
,[location] as [Location]
,[location_description] as [Location Description]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
FROM [dbo].[dim_ecmhr_geolocation_location]
where active = 1;
GO

-------------------------------------------------------------------

CREATE VIEW [dbo].[dim_ecmhr_header_active_v] AS SELECT 
[dim_ecmhr_header_sk]
,[dim_ecmhr_header_nk]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,employee_name  as [Employee Name]
,employee_status as [Employee Status]
,oracle_id as [Oracle Id]
,termination_date as [Termination Date]
,document_creation_date as [Document Creation Date]
,hire_date as [Hire Date]
,allow_termination as [allow_termination]
,is_executive as [Is Executive]
,plan_inactive_date as [Plan Inactive Date]
,legacyid as [Legacy Id]
,employee_folder_modified_by as [Employee Folder Modified By]
,employee_folder_modified_date as [Employee Folder Modified Date]
,employee_folder_created_by as [Employee Folder Created By]
,employee_folder_created_date as [Employee Folder Created Date]
,site_id as [Site Id]
,directdocuments as [Directdocuments]
,[dim_ecmhr_geolocation_bl1_nk]
,[dim_ecmhr_geolocation_bl2_nk]
,[dim_ecmhr_geolocation_area_nk]
,[dim_ecmhr_geolocation_country_nk]
,[dim_ecmhr_geolocation_location_nk]
FROM [dbo].[dim_ecmhr_header]
where active = 1;
GO


-------------------------------------------------------------------


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


