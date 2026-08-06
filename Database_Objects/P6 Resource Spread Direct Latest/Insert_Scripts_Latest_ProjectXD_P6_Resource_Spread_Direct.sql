insert into plp_parameter (parameter_code,parameter_type_code,description,parameter_data_type,max_no_values,parameter_size,comment,active,touched_by,touched_dtm) values('p6_activities_start_date','PIPELINE_INCREMENTAL','pl_resource_spread_direct_P6','T',1,50,NULL,1,'aditya.anand2@mcdermott.com','2025-04-08')
insert into plp_parameter (parameter_code,parameter_type_code,description,parameter_data_type,max_no_values,parameter_size,comment,active,touched_by,touched_dtm) values('p6_header_start_date','PIPELINE_INCREMENTAL','pl_resource_spread_direct_P6','T',1,50,NULL,1,'aditya.anand2@mcdermott.com','2025-04-08')
insert into plp_parameter (parameter_code,parameter_type_code,description,parameter_data_type,max_no_values,parameter_size,comment,active,touched_by,touched_dtm) values('p6_budget_period_start_date','PIPELINE_INCREMENTAL','pl_resource_spread_direct_P6','T',1,50,NULL,1,'aditya.anand2@mcdermott.com','2025-04-08')


GO

insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_resource_spread_direct_P6','NCSA','pl_resource_spread_direct_P6',NULL,'1','aditya.anand2@mcdermott.com','2025-04-18 06:42:19.043',9)


GO

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_P6','NetworkFolder','p6_activities_start_date',1,'p6_activities_start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-18 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_P6','NetworkFolder','p6_header_start_date',1,'p6_header_start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-18 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_P6','NetworkFolder','p6_budget_period_start_date',1,'p6_budget_period_start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2025-04-18 06:42:19.043')

GO


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('p6_activities_start_date','1950-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_P6','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('p6_header_start_date','1950-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_P6','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('p6_budget_period_start_date','1950-07-01 01:01:10',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_P6','NetworkFolder')



GO


CREATE TABLE [pxd].[p6_header]
(
	[hid] [int] NOT NULL,
	[p6_stage_id] [int] NOT NULL,
	[p6_projectsxd_user_id] [varchar](500) NULL,
	[p6_user_id] [varchar](500) NULL,
	[p6_database] [varchar](500) NULL,
	[p6_eps] [varchar](500) NULL,
	[p6_project] [varchar](500) NULL,
	[p6_date] [varchar](500) NULL,
	[p6_project_id] [varchar](500) NULL,
	[p6_total_activities_count] [varchar](500) NULL,
	[p6_plan_type] [varchar](12) NULL,
	[p6_reporting_date] [date] NULL,
	[p6_version_no] [int] NULL,
	[created_dttm] [datetime] NULL,
	[p6_projects] [varchar](8000) NULL,
	[p6_override] [varchar](5) NULL,
	[p6_override_reason] [varchar](100) NULL,
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



CREATE NONCLUSTERED INDEX [p6_header_ind1] ON [pxd].[p6_header]
(
	[p6_stage_id] ASC
)WITH (DROP_EXISTING = OFF)
GO


CREATE NONCLUSTERED INDEX [p6_header_ind2] ON [pxd].[p6_header]
(
	[p6_project] ASC,
	[p6_plan_type] ASC
)WITH (DROP_EXISTING = OFF)
GO


CREATE NONCLUSTERED INDEX [p6_header_ind3] ON [pxd].[p6_header]
(
	[created_dttm] ASC
)WITH (DROP_EXISTING = OFF)
GO



CREATE TABLE [pxd].[p6_activities]
(
	[p6apid] [int] NOT NULL,
	[hid] [int] NOT NULL,
	[activityId] [varchar](max) NULL,
	[activityObjectId] [varchar](120) NULL,
	[activityName] [varchar](max) NULL,
	[originalDuration] [varchar](120) NULL,
	[actualDuration] [varchar](120) NULL,
	[remainingDuration] [varchar](120) NULL,
	[originalDurationPerDay] [varchar](120) NULL,
	[actualDurationPerDay] [varchar](120) NULL,
	[remainingDurationPerDay] [varchar](120) NULL,
	[hoursPerDay] [varchar](120) NULL,
	[c_start] [varchar](120) NULL,
	[finish] [varchar](120) NULL,
	[actualStart] [varchar](120) NULL,
	[actualFinish] [varchar](120) NULL,
	[remainingLateStart] [varchar](120) NULL,
	[remainingLateFinish] [varchar](120) NULL,
	[calendarId] [varchar](120) NULL,
	[calendar] [varchar](max) NULL,
	[wbs] [varchar](max) NULL,
	[wbsName] [varchar](max) NULL,
	[costAccount] [varchar](120) NULL,
	[c_role] [varchar](120) NULL,
	[totalFloat] [varchar](120) NULL,
	[freeFloat] [varchar](120) NULL,
	[totalFloatPerDay] [varchar](120) NULL,
	[freeFloatPerDay] [varchar](120) NULL,
	[bLProjectStart] [varchar](120) NULL,
	[bLProjectFinish] [varchar](120) NULL,
	[critical] [varchar](120) NULL,
	[activityType] [varchar](120) NULL,
	[longestPath] [varchar](120) NULL,
	[primaryConstraintDate] [varchar](120) NULL,
	[secondaryConstraintDate] [varchar](120) NULL,
	[primaryConstraintType] [varchar](120) NULL,
	[secondaryConstraintType] [varchar](120) NULL,
	[expectedFinish] [varchar](120) NULL,
	[suspendDate] [varchar](120) NULL,
	[resumeDate] [varchar](120) NULL,
	[wbsPath] [varchar](max) NULL,
	[bLProjectLaborUnits] [varchar](120) NULL,
	[earnedValueLaborUnits] [varchar](120) NULL,
	[PlannedValueLaborUnits] [varchar](120) NULL,
	[bLProjectDuration] [varchar](120) NULL,
	[bLProjectDurationPerDay] [varchar](120) NULL,
	[physicalPercentComplete] [varchar](120) NULL,
	[predecessors] [varchar](max) NULL,
	[successors] [varchar](max) NULL,
	[predecessorDetails] [varchar](max) NULL,
	[successorsDetails] [varchar](max) NULL,
	[lateStart] [varchar](120) NULL,
	[lateFinish] [varchar](120) NULL,
	[actualLaborUnits] [varchar](120) NULL,
	[remainingLaborUnits] [varchar](120) NULL,
	[globalChangeManagement] [varchar](120) NULL,
	[globalExecutedByType] [varchar](120) NULL,
	[globalFunction] [varchar](120) NULL,
	[globalMilestones] [varchar](120) NULL,
	[globalOffice] [varchar](120) NULL,
	[globalPhase] [varchar](120) NULL,
	[globalPrime] [varchar](120) NULL,
	[globalPrimeV11] [varchar](120) NULL,
	[globalPrimeV13] [varchar](120) NULL,
	[globalRegion] [varchar](120) NULL,
	[globalScheduleRiskAssessment] [varchar](120) NULL,
	[globalStorageSolutions] [varchar](120) NULL,
	[globalSubPrime] [varchar](120) NULL,
	[globalSubPrimeV11] [varchar](120) NULL,
	[globalSubPrimeV13] [varchar](120) NULL,
	[globalSupplyChain] [varchar](120) NULL,
	[created_dttm] [datetime] NULL,
	[globalArchive] [varchar](max) NULL,
	[globalBusinessLine] [varchar](max) NULL,
	[globalProject] [varchar](max) NULL,
	[globalCwaDeckLevel] [varchar](max) NULL,
	[globalCwaVolume] [varchar](max) NULL,
	[globalEngAndProcRoc] [varchar](max) NULL,
	[globalEpmr] [varchar](max) NULL,
	[globalFabricationArea] [varchar](max) NULL,
	[globalFabComponents] [varchar](max) NULL,
	[globalGacCode] [varchar](max) NULL,
	[globalPrimeGcoaV15] [varchar](max) NULL,
	[globalSubPrimeGcoaV15] [varchar](max) NULL,
	[globalStructure] [varchar](max) NULL,
	[dataDate] [varchar](120) NULL,
	[source_name] [varchar](500) NULL,
	[sub_source_name] [varchar](500) NULL,
	[created_date_time] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[p6apid] ASC
	)
)
GO







CREATE NONCLUSTERED INDEX [p6_activities_ind1] ON [pxd].[p6_activities]
(
	[created_dttm] ASC
)WITH (DROP_EXISTING = OFF)
GO





CREATE TABLE [pxd].[p6_budget_period]
(
	[p6bugid] [int] NOT NULL,
	[hid] [int] NOT NULL,
	[activityId] [varchar](8000) NULL,
	[activityObjectId] [varchar](120) NULL,
	[uniqueActivityKey] [varchar](120) NULL,
	[budgetedLaborUnits] [varchar](120) NULL,
	[budgeted] [varchar](120) NULL,
	[actualUnits] [varchar](120) NULL,
	[remainingUnits] [varchar](120) NULL,
	[resourceId] [varchar](120) NULL,
	[resourceIdName] [varchar](8000) NULL,
	[resourceName] [varchar](8000) NULL,
	[resourceType] [varchar](120) NULL,
	[c_period] [varchar](120) NULL,
	[c_value] [varchar](100) NULL,
	[c_type] [varchar](100) NULL,
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





CREATE NONCLUSTERED INDEX [p6_budget_period_ind1] ON [pxd].[p6_budget_period]
(
	[created_dttm] ASC
)WITH (DROP_EXISTING = OFF)
GO






CREATE VIEW [pxd].[p6_budget_period_v] AS SELECT [p6bugid]
      ,[hid]
      ,[activityId]
      ,[activityObjectId]
      ,[uniqueActivityKey]
      ,[budgetedLaborUnits]
      ,[budgeted]
      ,[actualUnits]
      ,[remainingUnits]
      ,[resourceId]
      ,[resourceIdName]
      ,[resourceName]
      ,[resourceType]
      ,[c_period]
      ,[c_value]
      ,[c_type]
      ,[created_dttm]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
FROM [pxd].[p6_budget_period];
GO




ALTER VIEW [pxd].[p6_header_v] AS
SELECT 
    [hid],
    [p6_stage_id],
    [p6_projectsxd_user_id],
    [p6_user_id],
    [p6_database],
    [p6_eps],
    CASE
        -- If there's < 2 delimiters (' - '), or any edge case, return original
        WHEN pos_last_rev = 0 OR pos_second_last_rev = 0
            THEN p6_project
        WHEN last_pos + 3 > lenp  -- trailing delimiter produces empty tail
            THEN p6_project
        WHEN last_pos - second_last_pos <= 3  -- no characters between delimiters
            THEN p6_project
        ELSE
            CONCAT(
                -- token between the second-last delimiter and the last delimiter
                LTRIM(RTRIM(
                    SUBSTRING(
                        p6_project,
                        second_last_pos + 3,
                        last_pos - (second_last_pos + 3)
                    )
                )),
                ' - ',
                -- token after the last delimiter
                LTRIM(RTRIM(
                    SUBSTRING(
                        p6_project,
                        last_pos + 3,
                        lenp - (last_pos + 2)
                    )
                ))
            )
    END AS [p6_project],

    [p6_date],
    [p6_project_id],
    [p6_total_activities_count],
    [p6_plan_type],
    [p6_reporting_date],
    [p6_version_no],
    [created_dttm],
    [p6_projects],
    [p6_override],
    [p6_override_reason],
    [source_name],
    [sub_source_name],
    [created_date_time]
FROM [pxd].[p6_header]
CROSS APPLY (
    SELECT
        LEN(p6_project) AS lenp,
        CHARINDEX(' - ', REVERSE(p6_project)) AS pos_last_rev
) x
CROSS APPLY (
    SELECT
        CASE WHEN x.pos_last_rev > 0
             THEN CHARINDEX(' - ', REVERSE(p6_project), x.pos_last_rev + 1)
             ELSE 0
        END AS pos_second_last_rev
) y
CROSS APPLY (
    SELECT
        -- Convert reverse positions to forward positions for a 3-char delimiter (' - ')
        CASE WHEN x.pos_last_rev > 0
             THEN (x.lenp - x.pos_last_rev - 1)
             ELSE 0
        END AS last_pos,
        CASE WHEN y.pos_second_last_rev > 0
             THEN (x.lenp - y.pos_second_last_rev - 1)
             ELSE 0
        END AS second_last_pos
) z;

GO