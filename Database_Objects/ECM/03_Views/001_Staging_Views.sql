Create View [gpd].[stage_ecmhr_geolocation_bl1_v] as
select ROW_NUMBER() OVER (ORDER BY employeesdata_businesslineone) as stage_ecmhr_geolocation_bl1_id, employeesdata_businesslineone as [business_line_1], employeesdata_businesslineone as [business_line_1_description] from (
select distinct employeesdata_businesslineone, employeesdata_businesslineone as [business_line_1_description] from [gpd].[ECM_EmployeesData] where employeesdata_businesslineone is not null)a;


GO

Create View [gpd].[stage_ecmhr_geolocation_bl2_v] as
select ROW_NUMBER() OVER (ORDER BY employeesdata_businesslinetwo) as stage_ecmhr_geolocation_bl2_id, employeesdata_businesslinetwo as [business_line_2], employeesdata_businesslinetwo as [business_line_2_description] from (
select distinct employeesdata_businesslinetwo, employeesdata_businesslinetwo as [business_line_2_description] from [gpd].[ECM_EmployeesData] where employeesdata_businesslinetwo is not null)a;


GO

Create View [gpd].[stage_ecmhr_geolocation_area_v] as
select ROW_NUMBER() OVER (ORDER BY employeesdata_area) as stage_ecmhr_geolocation_area_id, employeesdata_area as [area], employeesdata_area as [area_description] from (
select distinct employeesdata_area, employeesdata_area as [area_description] from [gpd].[ECM_EmployeesData] where employeesdata_area is not null)a;


GO

Create View [gpd].[stage_ecmhr_geolocation_country_v] as
select ROW_NUMBER() OVER (ORDER BY employeesdata_country) as stage_ecmhr_geolocation_country_id, employeesdata_country as [country], employeesdata_country as [country_description] from (
select distinct employeesdata_country, employeesdata_country as [country_description] from [gpd].[ECM_EmployeesData] where employeesdata_country is not null)a;


GO

Create View [gpd].[stage_ecmhr_geolocation_location_v] as
select ROW_NUMBER() OVER (ORDER BY employeesdata_location) as stage_ecmhr_geolocation_location_id, employeesdata_location as [location], employeesdata_location as [location_description] from (
select distinct employeesdata_location, employeesdata_location as [location_description] from [gpd].[ECM_EmployeesData] where employeesdata_location is not null)a;


GO


CREATE VIEW [gpd].[stage_ecmhr_header_v] AS select ROW_NUMBER() OVER (ORDER BY employeesdata_legacyID) as stage_ecmhr_header_id 
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
,employeesdata_directdocuments as directdocuments
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


GO


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


