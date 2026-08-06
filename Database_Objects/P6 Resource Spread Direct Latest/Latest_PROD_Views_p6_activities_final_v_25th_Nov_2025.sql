ALTER VIEW [pxd].[p6_header_v] AS SELECT 
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





ALTER VIEW [pxd].[p6_activities_stage_v]
AS SELECT a.[p6apid]
      ,a.[hid]
      ,a.[activityId]
      ,a.[activityObjectId]
      ,a.[activityName]
      ,a.[originalDuration]
      ,a.[actualDuration]
      ,a.[remainingDuration]
      ,a.[originalDurationPerDay]
      ,a.[actualDurationPerDay]
      ,a.[remainingDurationPerDay]
      ,a.[hoursPerDay]
      ,a.[c_start]
	  ,Cast(a.[c_start] as date) as c_start_trans
      ,a.[finish]
	  ,Cast(a.[finish] as date) as finish_trans
      ,a.[actualStart]
	  ,Cast(a.[actualStart] as date) as actualStart_trans
      ,a.[actualFinish]
	  ,Cast(a.[actualFinish] as date) as actualFinish_trans
      ,a.[remainingLateStart]
      ,a.[remainingLateFinish]
      ,a.[calendarId]
      ,a.[calendar]
      ,a.[wbs]
      ,a.[wbsName]
      ,a.[costAccount]
      ,a.[c_role]
      ,a.[totalFloat]
      ,a.[freeFloat]
      ,a.[totalFloatPerDay]
      ,a.[freeFloatPerDay]
      ,a.[bLProjectStart]
      ,a.[bLProjectFinish]
      ,a.[critical]
      ,a.[activityType]
      ,a.[longestPath]
      ,a.[primaryConstraintDate]
      ,a.[secondaryConstraintDate]
      ,a.[primaryConstraintType]
      ,a.[secondaryConstraintType]
      ,a.[expectedFinish]
      ,a.[suspendDate]
      ,a.[resumeDate]
      ,a.[wbsPath]
      ,a.[bLProjectLaborUnits]
      ,a.[earnedValueLaborUnits]
      ,a.[PlannedValueLaborUnits]
      ,a.[bLProjectDuration]
      ,a.[bLProjectDurationPerDay]
      ,a.[physicalPercentComplete]
      ,a.[predecessors]
      ,a.[successors]
      ,a.[predecessorDetails]
      ,a.[successorsDetails]
      ,a.[lateStart]
      ,a.[lateFinish]
      ,a.[actualLaborUnits]
      ,a.[remainingLaborUnits]
      ,a.[globalChangeManagement]
      ,a.[globalExecutedByType]
      ,a.[globalFunction]
      ,a.[globalMilestones]
      ,a.[globalOffice]
      ,a.[globalPhase]
      ,a.[globalPrime]
      ,a.[globalPrimeV11]
      ,a.[globalPrimeV13]
      ,a.[globalRegion]
      ,a.[globalScheduleRiskAssessment]
      ,a.[globalStorageSolutions]
      ,a.[globalSubPrime]
      ,a.[globalSubPrimeV11]
      ,a.[globalSubPrimeV13]
      ,a.[globalSupplyChain]
      ,a.[created_dttm]
	  ,a.[globalArchive]
      ,a.[globalBusinessLine]
      ,a.[globalProject]
      ,a.[globalCwaDeckLevel]
      ,a.[globalCwaVolume]
      ,a.[globalEngAndProcRoc]
      ,a.[globalEpmr]
      ,a.[globalFabricationArea]
      ,a.[globalFabComponents]
      ,a.[globalGacCode]
      ,a.[globalPrimeGcoaV15]
      ,a.[globalSubPrimeGcoaV15]
      ,a.[globalStructure]
	  ,a.[dataDate]
	  ,FORMAT(Cast([dataDate] as DATETIME), 'yyyy-MM-ddTHH:mm:ss') as dataDate_trans
      ,a.[source_name]
      ,a.[sub_source_name]
      ,a.[created_date_time]
	  ,b.[p6_date]
	  ,Cast(REPLACE(b.[p6_date],',','') as date) as p6_date_trans
	  ,b.[p6_reporting_date]
	  ,Cast(b.[p6_reporting_date] as date) as p6_reporting_date_trans
	  ,b.p6_project
	  
FROM [pxd].[p6_activities] a
left outer join [pxd].[p6_header_v] b
on a.hid=b.p6_stage_id;
GO


ALTER VIEW [pxd].[p6_activities_v]
AS SELECT [p6apid]
      ,[hid]
      ,[activityId]
      ,[activityObjectId]
      ,[activityName]
      ,[originalDuration]
      ,[actualDuration]
      ,[remainingDuration]
      ,[originalDurationPerDay]
      ,[actualDurationPerDay]
      ,[remainingDurationPerDay]
      ,[hoursPerDay]
      ,[c_start]
      ,[c_start_trans]
      ,[finish]
	  ,[finish_trans]
      ,[actualStart]
      ,[actualStart_trans]
      ,[actualFinish]
	  ,[actualFinish_trans]
      ,[remainingLateStart]
      ,[remainingLateFinish]
      ,[calendarId]
      ,[calendar]
      ,[wbs]
      ,[wbsName]
      ,[costAccount]
      ,[c_role]
      ,[totalFloat]
      ,[freeFloat]
      ,[totalFloatPerDay]
      ,[freeFloatPerDay]
      ,[bLProjectStart]
      ,[bLProjectFinish]
      ,[critical]
      ,[activityType]
      ,[longestPath]
      ,[primaryConstraintDate]
      ,[secondaryConstraintDate]
      ,[primaryConstraintType]
      ,[secondaryConstraintType]
      ,[expectedFinish]
      ,[suspendDate]
      ,[resumeDate]
      ,[wbsPath]
      ,[bLProjectLaborUnits]
      ,[earnedValueLaborUnits]
      ,[PlannedValueLaborUnits]
      ,[bLProjectDuration]
      ,[bLProjectDurationPerDay]
      ,[physicalPercentComplete]
      ,[predecessors]
      ,[successors]
      ,[predecessorDetails]
      ,[successorsDetails]
      ,[lateStart]
      ,[lateFinish]
      ,[actualLaborUnits]
      ,[remainingLaborUnits]
      ,[globalChangeManagement]
      ,[globalExecutedByType]
      ,[globalFunction]
      ,[globalMilestones]
      ,[globalOffice]
      ,[globalPhase]
      ,[globalPrime]
      ,[globalPrimeV11]
      ,[globalPrimeV13]
      ,[globalRegion]
      ,[globalScheduleRiskAssessment]
      ,[globalStorageSolutions]
      ,[globalSubPrime]
      ,[globalSubPrimeV11]
      ,[globalSubPrimeV13]
      ,[globalSupplyChain]
      ,[created_dttm]
	  ,[globalArchive]
      ,[globalBusinessLine]
      ,[globalProject]
      ,[globalCwaDeckLevel]
      ,[globalCwaVolume]
      ,[globalEngAndProcRoc]
      ,[globalEpmr]
      ,[globalFabricationArea]
      ,[globalFabComponents]
      ,[globalGacCode]
      ,[globalPrimeGcoaV15]
      ,[globalSubPrimeGcoaV15]
      ,[globalStructure]
	  ,[dataDate]
	  ,[dataDate_trans]
      ,[source_name]
      ,[sub_source_name]
      ,[created_date_time]
      ,[p6_date]
      ,[p6_date_trans]
      ,[p6_reporting_date]
      ,[p6_reporting_date_trans]
	  ,[p6_project]
	  
	  ,c_start as [baselinestart]
	  ,dataDate_trans as [periodstart]
	  ,FORMAT(Cast(DATEADD(month, 1, dataDate_trans) as DATETIME), 'yyyy-MM-ddTHH:mm:ss') as [periodfinish]
	  ,case 
		when finish >= DATEADD(month, -1, dataDate_trans)
		THEN finish
		end as [baselinefinish]
	  	  	 
	  
FROM [pxd].[p6_activities_stage_v];
GO





ALTER VIEW [pxd].[p6_activities_final_v] AS with CTE as
(
select a.*,d.activityId as activityId_check 
,d.c_start as c_start_1
,d.finish as finish_1 
,d.activityType as activityType_1
,a.dataDate as maxdate
,d.dataDate mindate
,d.originalDurationPerDay as originalDurationPerDay_1
from [pxd].[p6_activities_v] a
LEFT outer JOIN [pxd].[p6_activities_v] AS d ON a.activityId = d.activityId 
AND MONTH(d.dataDate) = MONTH(CAST(DATEADD(month, -1, a.dataDate) AS DATETIME))
) 

SELECT a.[p6apid]
      ,a.[hid]
      ,a.[activityId]
      ,a.[activityObjectId]
      ,a.[activityName]
      ,a.[originalDuration]
      ,a.[actualDuration]
      ,a.[remainingDuration]
      ,a.[originalDurationPerDay]
      ,a.[actualDurationPerDay]
      ,a.[remainingDurationPerDay]
      ,a.[hoursPerDay]
      ,a.[c_start]
      ,a.[finish]
      ,a.[actualStart]
      ,a.[actualFinish]
      ,a.[remainingLateStart]
      ,a.[remainingLateFinish]
      ,a.[calendarId]
      ,a.[calendar]
      ,a.[wbs]
	  ,b.[p6_reporting_date] AS P6_Report_Period
	  ,b.[p6_project_id]
	  ,b.[p6_project]
	  ,LEFT(b.p6_project, CHARINDEX('-', b.p6_project) - 1) AS project_number
	  ,b.[p6_date]
	  ,p.project_name AS ProjectName
	  ,p.product_line_lov_code AS ProductLine
	  ,p.area_code AS Area
	  ,p.tier_lov_code AS Tier
	  ,p.completion_date AS CompletionDate
      ,a.[wbsName]
      ,a.[costAccount]
      ,a.[c_role]
      ,a.[totalFloat]
      ,a.[freeFloat]
      ,a.[totalFloatPerDay]
      ,a.[freeFloatPerDay]
      ,a.[bLProjectStart]
      ,a.[bLProjectFinish]
      ,a.[critical]
      ,a.[activityType]
      ,a.[longestPath]
      ,a.[primaryConstraintDate]
      ,a.[secondaryConstraintDate]
      ,a.[primaryConstraintType]
      ,a.[secondaryConstraintType]
      ,a.[expectedFinish]
      ,a.[suspendDate]
      ,a.[resumeDate]
      ,a.[wbsPath]
      ,a.[bLProjectLaborUnits]
      ,a.[earnedValueLaborUnits]
      ,a.[PlannedValueLaborUnits]
      ,a.[bLProjectDuration]
      ,a.[bLProjectDurationPerDay]
      ,a.[physicalPercentComplete]
      ,a.[predecessors]
      ,a.[successors]
      ,a.[predecessorDetails]
      ,a.[successorsDetails]
      ,a.[lateStart]
      ,a.[lateFinish]
      ,a.[actualLaborUnits]
      ,a.[remainingLaborUnits]
      ,a.[globalChangeManagement]
      ,a.[globalExecutedByType]
      ,a.[globalFunction]
      ,a.[globalMilestones]
      ,a.[globalOffice]
      ,a.[globalPhase]
      ,a.[globalPrime]
      ,a.[globalPrimeV11]
      ,a.[globalPrimeV13]
      ,a.[globalRegion]
      ,a.[globalScheduleRiskAssessment]
      ,a.[globalStorageSolutions]
      ,a.[globalSubPrime]
      ,a.[globalSubPrimeV11]
      ,a.[globalSubPrimeV13]
      ,a.[globalSupplyChain]
      ,a.[created_dttm]
	  ,a.[globalArchive]
      ,a.[globalBusinessLine]
      ,a.[globalProject]
      ,a.[globalCwaDeckLevel]
      ,a.[globalCwaVolume]
      ,a.[globalEngAndProcRoc]
      ,a.[globalEpmr]
      ,a.[globalFabricationArea]
      ,a.[globalFabComponents]
      ,a.[globalGacCode]
      ,a.[globalPrimeGcoaV15]
      ,a.[globalSubPrimeGcoaV15]
      ,a.[globalStructure]
	  ,a.[dataDate]
	  ,a.[dataDate_trans]
      ,a.[source_name]
      ,a.[sub_source_name]
      ,a.[created_date_time]
	  ,case 
			WHEN a.actualFinish is NULL and a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') 
			AND (
				predecessors IS NULL OR TRIM(predecessors) = ''
				OR
				successors IS NULL OR TRIM(successors) = ''
				)
			THEN 1
			ELSE 0
		end as count_open_ends
		
	
	,case 
			WHEN a.actualStart_trans is not NULL and a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone')
			AND (actualStart_trans > dataDate_trans	OR actualFinish_trans > dataDate_trans)
			THEN 1
			ELSE 0
		end as Future_Status

	,case 
		when a.actualFinish is NULL and a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.predecessorDetails like '%: SF%'
		then (LEN(a.predecessorDetails)-LEN(REPLACE(a.predecessorDetails,'SF','')))/LEN('SF')
		else 0
		end as [SF Relationship]
		
	,case 
		when a.actualFinish is NULL and a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') 
		and a.primaryConstraintType IN ('Mandatory Start', 'Mandatory Finish','Start On','Finish On')
		THEN 1
		else 0
		end as [Hard Constraints]	
		
	,case 
		when a.actualFinish is NULL and a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') AND (a.predecessorDetails like '%: FS%' OR a.predecessorDetails like '%: SS%') THEN 0
		when a.actualFinish is NULL and a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') AND (a.predecessorDetails like '%: SF%' OR a.predecessorDetails like '%: FF%') THEN 1
		else 0
		end as [Open Start]	
		
	,case 
		when a.actualFinish is NULL and a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') 
		AND (
			successorsDetails LIKE '%: SF%' 
			OR successorsDetails LIKE '%: SS%'
			)
		AND successorsDetails NOT LIKE '%: FS%'
		AND successorsDetails NOT LIKE '%: FF%'
		
		THEN 1
		else 0
		end as [Open Finish]		
				
		
	,case 
		when a.actualFinish is NULL and a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone')
		and a.primaryConstraintType IN ('As Late As Possible', 'Finish On or After','Finish On or Before','Start On or After','Start On or Before')
		THEN 1
		else 0
		end as [Soft Constraints]		
		
		
	,case 
			WHEN a.c_start is not NULL and a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone')
			and a.c_start = dataDate_trans
			THEN 1
			ELSE 0
		end as [Riding DD]	
		
	,case 
			WHEN a.actualFinish is NULL and a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.totalFloatPerDay like '%-%'
			THEN 1
			ELSE 0
		end as [Negative Float]	
		
	,case 
		when a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') 
		AND a.successorsDetails like '%: FS%'
		then (LEN(a.successorsDetails)-LEN(REPLACE(a.successorsDetails,'FS','')))/LEN('FS')
		else 0
		end as [FS Relations]
		
	,case 
		when a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') 
		AND (a.successorsDetails LIKE '%: SS%' OR a.successorsDetails LIKE '%: FF%')
		then (LEN(a.successorsDetails) - LEN(REPLACE(a.successorsDetails, ': SS', ''))) / LEN(': SS') + 
		(LEN(a.successorsDetails) - LEN(REPLACE(a.successorsDetails, ': FF', ''))) / LEN(': FF') 
		else 0
		end as [SS & FF Relationships]
		
		
	,case 
	when a.actualFinish is NULL and a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone')
		then
			(
				    -- Count of predecessors
				    CASE 
				      WHEN TRIM(predecessorDetails) IS NULL OR TRIM(predecessorDetails) = '' THEN 0
				      ELSE LEN(predecessorDetails) - LEN(REPLACE(predecessorDetails, ',', '')) + 1
				    END
				    +
				    -- Count of successors
				    CASE 
				      WHEN TRIM(successorsDetails) IS NULL OR TRIM(successorsDetails) = '' THEN 0
				      ELSE LEN(successorsDetails) - LEN(REPLACE(successorsDetails, ',', '')) + 1
				    END
				  ) * 1.0

	else 0
	end as [Logic Density]		
		

	,case 
		when a.actualFinish is NULL and a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone')
		and (((LEN(a.predecessorDetails)-LEN(REPLACE(a.predecessorDetails,',','')))/LEN(','))+1)>2
		THEN 1
		else 0
		end as [Merge Hotspot]
		
	,case 
		when a.actualFinish is NULL and a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone')
		and (((LEN(a.successorsDetails)-LEN(REPLACE(a.successorsDetails,',','')))/LEN(','))+1)>2
		THEN 1
		else 0
		end as [Diverge Hotspot]	
	
	,case 
		when a.activityId_check IS NOT NULL and a.actualStart is NOT NULL 
		and a.activityType_1 ='Task Dependent' and (cast(a.actualDurationPerDay as money) + cast(a.remainingDurationPerDay as money)) !=0
		and cast(bLProjectDurationPerDay as float) > 0 and cast(actualDurationPerDay as float) >0
		THEN (cast(a.originalDurationPerDay_1 as money)) /(cast(a.actualDurationPerDay as money) + cast(a.remainingDurationPerDay as money))
		else 0
		end as [SPI(t) Monthly]	
	
			
	,CASE 
		WHEN a.activityId_check IS NOT NULL and a.actualStart is not null
		AND a.activityType_1 IN ('Task Dependent', 'Start Milestone') 
		AND cast(a.c_start_1 as datetime) >= a.mindate
		AND cast(a.c_start_1 as datetime) <= a.maxdate
        THEN 1
        ELSE 0
		end as [Planned Starts - Started]		
		
	,CASE 
		WHEN a.activityId_check IS NOT NULL and a.actualStart is null
		AND a.activityType_1 IN ('Task Dependent', 'Start Milestone') 
		AND cast(a.c_start_1 as datetime) >= a.mindate
		AND cast(a.c_start_1 as datetime) <= a.maxdate
        THEN 1
        ELSE 0
		end as [Planned Starts - Not Started]


	,CASE 
        WHEN a.activityId_check IS NOT NULL 
		AND a.activityType_1 IN ('Task Dependent', 'Start Milestone') 
		AND cast(a.c_start_1 as datetime) >= a.mindate
		AND cast(a.c_start_1 as datetime) <= a.maxdate
        THEN 1
        ELSE 0
        END AS [Planned Starts]


	,CASE 
        WHEN a.activityId_check IS NOT NULL 
		AND a.activityType_1 in ('Task Dependent' ,'Start Milestone')
		AND a.actualStart is not null
		AND cast(a.c_start_1 as datetime) >= a.mindate 
		AND cast(a.c_start_1 as datetime) >= a.maxdate
        THEN 1
        ELSE 0
		END AS [Not Planned But Started]	
		

	,CASE 
        WHEN a.activityId_check IS NOT NULL and a.actualFinish is not null
		AND cast(a.finish_1 as datetime) >= a.mindate
		AND cast(a.finish_1 as datetime) <= a.maxdate
		AND a.activityType_1 in ('Task Dependent' ,'Finish Milestone')
        THEN 1
        ELSE 0
		end as [Planned Finishes - Finished]	
		
	,CASE 
        WHEN a.activityId_check IS NOT NULL and a.actualFinish is null
		AND cast(a.finish_1 as datetime) >= a.mindate
		AND cast(a.finish_1 as datetime) <= a.maxdate
		AND a.activityType_1 in ('Task Dependent' ,'Finish Milestone')
        THEN 1
        ELSE 0
		end as [Planned Finishes - Not Finished]
		
	,CASE 
        WHEN a.activityId_check IS NOT NULL 
		AND cast(a.finish_1 as datetime) >= a.mindate
		AND cast(a.finish_1 as datetime) <= a.maxdate
		AND a.activityType_1 in ('Task Dependent' ,'Finish Milestone')
        THEN 1
        ELSE 0
		end as [Planned Finishes]	
		
	,case 
		WHEN a.activityId_check IS NOT NULL 
		AND a.activityType_1 in ('Task Dependent' ,'Finish Milestone')
		AND a.actualFinish is not null
		AND cast(a.finish_1 as datetime) >= a.mindate 
		AND cast(a.finish_1 as datetime) >= a.maxdate
        THEN 1
        ELSE 0
		end as [Not Planned But Finished]	
		

		
	,case 
		when a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.predecessorDetails !=''
		then ((LEN(a.predecessorDetails)-LEN(REPLACE(a.predecessorDetails,',','')))/LEN(','))+1
		else 0
		end as [Number of Relationships]
		
		
	,case 
		when a.actualStart is NULL
		then 1
		else 0
		end as [Planned Activities]	

	,case 
		when a.actualStart is NOT NULL and a.actualFinish is NULL
		then 1
		else 0
		end as [In-Progress Activities]	
		
	,case 
		when a.actualFinish is NOT NULL and a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone')
		then 1
		else 0
		end as [Completed Activities]


	,case 
		when a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.predecessors !=''
		then ((LEN(a.predecessors)-LEN(REPLACE(a.predecessors,',','')))/LEN(','))+1
		else 0
		end as [Number of Predecessors]
		
		
	,case 
		when a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.predecessorDetails like '%: FS%'
		then (LEN(a.predecessorDetails)-LEN(REPLACE(a.predecessorDetails,'FS','')))/LEN('FS')
		else 0
		end as [Number of FS Predecessors]

	,case 
		when a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.predecessorDetails like '%: SS%'
		then (LEN(a.predecessorDetails)-LEN(REPLACE(a.predecessorDetails,'SS','')))/LEN('SS')
		else 0
		end as [Number of SS Predecessors]
		
	,case 
		when a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.predecessorDetails like '%: SF%'
		then (LEN(a.predecessorDetails)-LEN(REPLACE(a.predecessorDetails,'SF','')))/LEN('SF')
		else 0
		end as [Number of SF Predecessors]
		
	,case 
		when a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.predecessorDetails like '%: FF%'
		then (LEN(a.predecessorDetails)-LEN(REPLACE(a.predecessorDetails,'FF','')))/LEN('FF')
		else 0
		end as [Number of FF Predecessors]
		
		
	,case 
		when a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.successors !=''
		then ((LEN(a.successors)-LEN(REPLACE(a.successors,',','')))/LEN(','))+1
		else 0
		end as [Number of Successors]	
		
	,case 
		when a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.successorsDetails like '%: FS%'
		then (LEN(a.successorsDetails)-LEN(REPLACE(a.successorsDetails,'FS','')))/LEN('FS')
		else 0
		end as [Number of FS Successors]
	
	,case 
		when a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.successorsDetails like '%: SS%'
		then (LEN(a.successorsDetails)-LEN(REPLACE(a.successorsDetails,'SS','')))/LEN('SS')
		else 0
		end as [Number of SS Successors]
	
	,case 
		when a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.successorsDetails like '%: SF%'
		then (LEN(a.successorsDetails)-LEN(REPLACE(a.successorsDetails,'SF','')))/LEN('SF')
		else 0
		end as [Number of SF Successors]
		
	,case 
		when a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.successorsDetails like '%: FF%'
		then (LEN(a.successorsDetails)-LEN(REPLACE(a.successorsDetails,'FF','')))/LEN('FF')
		else 0
		end as [Number of FF Successors]
	
	,case 
		when a.actualFinish is NULL and a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') 
		then
			CASE
				WHEN EXISTS (
				  SELECT 1
				  FROM STRING_SPLIT(predecessorDetails, ',') AS part
				  WHERE TRY_CAST(
				    LTRIM(
				      PARSENAME(REPLACE(part.value, ':', '.'), 1)
				    ) AS INT
				  ) > 0
				)
				THEN 1
				ELSE 0
			END
		ELSE 0
		END AS [Lags]

	,case 
		when a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.predecessorDetails like '%: -%'
		then (LEN(a.predecessorDetails)-LEN(REPLACE(a.predecessorDetails,': -','')))/LEN(': -')
		else 0
		end as [Leads]	

	
	,case 
		when a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.successorsDetails NOT like '%: -%' and a.successorsDetails NOT like ''
		then (LEN(a.successorsDetails)-LEN(REPLACE(a.successorsDetails,': ','')))/4
		else 0
		end as [Number of Successor Lags]
		
	,case 
		when a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.successorsDetails like '%: -%'
		then (LEN(a.successorsDetails)-LEN(REPLACE(a.successorsDetails,': -','')))/LEN(': -')
		else 0
		end as [Number of Successor Leads]	
		
		
		
	,CASE
        WHEN a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.predecessorDetails NOT like '%: -%' and a.predecessorDetails NOT like '' 
			THEN (
				SELECT MIN(TRY_CAST(LTRIM(RTRIM(SUBSTRING(TRIM(split.value), CHARINDEX(':', TRIM(split.value), CHARINDEX(':', TRIM(split.value)) + 1) + 1, 10))) AS INT))
				FROM STRING_SPLIT(a.predecessorDetails, ',') AS split
        )
        ELSE 0
    END AS [Minimum Lag]
		
	
	,CASE
        WHEN a.activityType in ('Task Dependent' ,'Start Milestone','Finish Milestone') and a.predecessorDetails NOT like '%: -%' and a.predecessorDetails NOT like '' 
			THEN (
				SELECT MAX(TRY_CAST(LTRIM(RTRIM(SUBSTRING(TRIM(split.value), CHARINDEX(':', TRIM(split.value), CHARINDEX(':', TRIM(split.value)) + 1) + 1, 10))) AS INT))
				FROM STRING_SPLIT(a.predecessorDetails, ',') AS split
        )
        ELSE 0
    END AS [Maximum Lag]
		
		

FROM CTE a
inner join [pxd].[p6_header_v] b on a.hid=b.hid
left join dim_entp_project_active_v p on LEFT(b.p6_project, CHARINDEX('-', b.p6_project) - 1) = p.project_number;
GO


