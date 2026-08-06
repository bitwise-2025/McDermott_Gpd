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


