create table [gpd].[reprocess_dim_ecmhr_geolocation_bl1] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[business_line_1] varchar(500) NOT NULL,
	[business_line_1_description] [varchar](500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


---------------------------------------------------------------------

create table [gpd].[reprocess_dim_ecmhr_geolocation_bl2] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[business_line_2] varchar(500) NOT NULL,
	[business_line_2_description] [varchar](500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


---------------------------------------------------------------------

create table [gpd].[reprocess_dim_ecmhr_geolocation_area] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[area] varchar(500) NOT NULL,
	[area_description] [varchar](500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

---------------------------------------------------------------------

create table [gpd].[reprocess_dim_ecmhr_geolocation_country] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[country] varchar(500) NOT NULL,
	[country_description] [varchar](500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

---------------------------------------------------------------------

create table [gpd].[reprocess_dim_ecmhr_geolocation_location] 
(
	[rssk] [int] IDENTITY(1,1) NOT NULL,
	[created_date_time] [datetime] NULL,
	[hash_code] [varchar](4000) NULL,
	[location] varchar(500) NOT NULL,
	[location_description] [varchar](500) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

---------------------------------------------------------------------

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
	[directdocuments] [varchar](4000) NULL,
	[rk_failure_info] [varchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

---------------------------------------------------------------------


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


