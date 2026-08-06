DROP TABLE [gpd].[ECM_EmployeesData]
GO
CREATE TABLE [gpd].[ECM_EmployeesData]
(
	[employeesdata_country] [varchar](500) NULL,
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

---------------------------------------------------------------------
DROP table [gpd].[reprocess_dim_ecmhr_header] 
GO
create table [gpd].[reprocess_dim_ecmhr_header] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[employee_name] varchar(500) NULL,
	[employee_status] [varchar](500) NULL,
	[oracle_id] [varchar](500) NULL,
	[termination_date] [varchar](500) NULL,
	[document_creation_date] [varchar](500) NULL,
	[hire_date] [varchar](500) NULL,
	[allow_termination] [varchar](500) NULL,
	[is_executive] [varchar](500) NULL,
	[plan_inactive_date] [varchar](500) NULL,
	[legacyid] [varchar](500) NULL,
	[employee_folder_modified_by] [varchar](500) NULL,
	[employee_folder_modified_date] [varchar](500) NULL,
	[employee_folder_created_by] [varchar](500) NULL,
	[employee_folder_created_date] [varchar](500) NULL,
	[site_id] [varchar](500) NULL,
	[business_line_1] [varchar](500) NULL,
	[dim_ecmhr_geolocation_bl1_nk] [int] NULL,
	[business_line_2] [varchar](500) NULL,
	[dim_ecmhr_geolocation_bl2_nk] [int] NULL,
	[area] [varchar](500) NULL,
	[dim_ecmhr_geolocation_area_nk] [int] NULL,
	[country] [varchar](500) NULL,
	[dim_ecmhr_geolocation_country_nk] [int] NULL,
	[location] [varchar](500) NULL,
	[dim_ecmhr_geolocation_location_nk] [int] NULL,
	[directdocuments] [varchar](8000) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

---------------------------------------------------------------------
DROP TABLE [dbo].[dim_ecmhr_header]
GO
CREATE TABLE [dbo].[dim_ecmhr_header]
(
	[dim_ecmhr_header_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ecmhr_header_nk] [int] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[employee_name] varchar(500) NULL,
	[employee_status] [varchar](500) NULL,
	[oracle_id] [varchar](500) NULL,
	[termination_date] [varchar](500) NULL,
	[document_creation_date] [varchar](500) NULL,
	[hire_date] [varchar](500) NULL,
	[allow_termination] [varchar](500) NULL,
	[is_executive] [varchar](500) NULL,
	[plan_inactive_date] [varchar](500) NULL,
	[legacyid] [varchar](500) NULL,
	[employee_folder_modified_by] [varchar](500) NULL,
	[employee_folder_modified_date] [varchar](500) NULL,
	[employee_folder_created_by] [varchar](500) NULL,
	[employee_folder_created_date] [varchar](500) NULL,
	[site_id] [varchar](500) NULL,
	[business_line_1] [varchar](500) NULL,
	[dim_ecmhr_geolocation_bl1_nk] [int] NULL,
	[business_line_2] [varchar](500) NULL,
	[dim_ecmhr_geolocation_bl2_nk] [int] NULL,
	[area] [varchar](500) NULL,
	[dim_ecmhr_geolocation_area_nk] [int] NULL,
	[country] [varchar](500) NULL,
	[dim_ecmhr_geolocation_country_nk] [int] NULL,
	[location] [varchar](500) NULL,
	[dim_ecmhr_geolocation_location_nk] [int] NULL,
	[directdocuments] [varchar](8000) NULL
	
 CONSTRAINT [legacyidpk] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ecmhr_header_sk ] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------



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
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

--------------------------------------------------------------

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



--------------------------------------------------------------

update [dbo].[generic_load_detail] 
set stage_column_data_type='varchar(8000)'
where load_name ='dim_ecmhr_header' and stage_column_name='directdocuments' and target_column_name='directdocuments'

GO

update [dbo].[generic_load_detail] 
set stage_column_data_type='varchar(8000)'
where load_name ='dim_ecmhr_detail' and stage_column_name='file_name' and target_column_name='file_name'

GO

update plp_parameter_value
set parameter_value='2024-11-05 06:33:58.560'
where parameter_code='start_date'
and pipeline_code='pl_ecm_employeesdata_raw_to_synapse'

GO
--------------------------------------------------------------

ALTER VIEW [gpd].[stage_ecmhr_header_v] AS 
select ROW_NUMBER() OVER (ORDER BY employeesdata_legacyID) as stage_ecmhr_header_id 
,employeesdata_employeename as employee_name
,employeesdata_employeeStatus as employee_status
,employeesdata_oracleID as oracle_id
,employeesdata_terminationDate as termination_date
,employeesdata_documentCreationDate as document_creation_date
,employeesdata_hireDate as hire_date
,employeesdata_allowTermination as allow_termination
,employeesdata_isExecutive as is_executive
,employeesdata_planInactiveDate as plan_inactive_date
,employeesdata_legacyID as legacyid
,employeesdata_modifiedBy as employee_folder_modified_by
,employeesdata_modifiedAt as employee_folder_modified_date
,employeesdata_createdBy as employee_folder_created_by
,employeesdata_createdAt as employee_folder_created_date
,employeesdata_siteid as site_id
,employeesdata_businesslineone as business_line_1
,employeesdata_businesslinetwo as business_line_2
,employeesdata_area as area
,employeesdata_country as country
,employeesdata_location as location
,ISNULL(employeesdata_directdocuments,'') as directdocuments
--,subfolders_name as folder_name

from (
select distinct employeesdata_employeename
,employeesdata_employeeStatus
,employeesdata_oracleID
,employeesdata_terminationDate
,employeesdata_documentCreationDate
,employeesdata_hireDate
,employeesdata_allowTermination
,employeesdata_isExecutive
,employeesdata_planInactiveDate
,employeesdata_legacyID
,employeesdata_modifiedBy
,employeesdata_modifiedAt
,employeesdata_createdBy
,employeesdata_createdAt
,employeesdata_siteid
,employeesdata_businesslineone
,employeesdata_businesslinetwo
,employeesdata_area
,employeesdata_country
,employeesdata_location
,employeesdata_directdocuments
--,subfolders_name

from [gpd].[ECM_EmployeesData] )a;

--------------------------------------------------------------
GO

TRUNCATE TABLE [gpd].[ECM_EmployeesData];	
GO	
TRUNCATE TABLE dim_ecmhr_geolocation_bl1;	
GO	
TRUNCATE TABLE dim_ecmhr_geolocation_bl2;	
GO
TRUNCATE TABLE dim_ecmhr_geolocation_area;	
GO
TRUNCATE TABLE dim_ecmhr_geolocation_country;	
GO
TRUNCATE TABLE dim_ecmhr_geolocation_location;	
GO
TRUNCATE TABLE dim_ecmhr_header;				
GO
TRUNCATE TABLE dim_ecmhr_detail;				
GO
