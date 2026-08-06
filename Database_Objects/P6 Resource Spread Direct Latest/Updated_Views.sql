CREATE VIEW [pxd].[p6_activities_stage_v] AS SELECT a.[p6apid]
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
left outer join [pxd].[p6_header] b
on a.hid=b.p6_stage_id;
GO


CREATE VIEW [pxd].[p6_activities_v] AS SELECT [p6apid]
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








CREATE VIEW [pxd].[p6_activities_final_v] AS with CTE as
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
	  ,b.[p6_date]
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
inner join [pxd].[p6_header] b on a.hid=b.hid;
GO





CREATE VIEW [pxd].[01a_EAC_ETC_Trend_v]
AS Select  
Reportperiod, 
sum(convert(float, ltrim(rtrim(EACRevenue)))) 'EAC Revenue',
sum(convert(float, ltrim(rtrim(EACGP)))) 'EAC GP',

case 
	when sum(convert(float, ltrim(rtrim(EACRevenue)))) !=0
	THEN sum(convert(float, ltrim(rtrim(EACGP))))/sum(convert(float, ltrim(rtrim(EACRevenue))))
	else 0
	end as [EAC GP%],

sum(convert(float, ltrim(rtrim(ETCRevenue)))) 'ETC Revenue',
sum(convert(float, ltrim(rtrim(TotalContingency)))) Contingency,

case 
	when sum(convert(float, ltrim(rtrim(ETCCost)))) !=0
	THEN sum(convert(float, ltrim(rtrim(TotalContingency))))/sum(convert(float, ltrim(rtrim(ETCCost))))
	else 0
	end as [Contingency % of ETC Cost],	

sum(convert(float, ltrim(rtrim(TotalP80Risk)))) Risks,
sum(convert(float, ltrim(rtrim(Opportunities)))) Opportunities,

case 
	when sum(convert(float, ltrim(rtrim(eaccost)))) !=0
	THEN sum(convert(float, ltrim(rtrim(itdcost))))/sum(convert(float, ltrim(rtrim(eaccost))))
	else 0
	end as [POC %],	

sum(convert(float, ltrim(rtrim(ETCGP)))) 'ETC GP',

case 
	when sum(convert(float, ltrim(rtrim(ETCRevenue)))) !=0
	THEN sum(convert(float, ltrim(rtrim(ETCGP))))/sum(convert(float, ltrim(rtrim(ETCRevenue))))
	else 0
	end as [ETC GP%],	

case 
	when sum(convert(float, ltrim(rtrim(ETCRevenue)))) !=0
	THEN sum(convert(float, ltrim(rtrim(TotalContingency))))/sum(convert(float, ltrim(rtrim(ETCRevenue))))
	else 0
	end as [Contingency % of ETC Revenue]

from
pxd.TopXProjects a
left join pxd.AreaPerformanceSummary c on (a.ProjectNo = c.ProjectNo)
where a.Date_Created = (select max(Date_Created) from pxd.TopXProjects)
group by ReportPeriod;
GO






CREATE VIEW [pxd].[01b_EAC_ETC_Trend_v]
AS Select 
Reportperiod, 
c.ProjectNo,
ProjectName,
ProductLine as BusinessLine,
sum(convert(float, ltrim(rtrim(EACRevenue)))) 'EAC Revenue',
sum(convert(float, ltrim(rtrim(EACGP)))) 'EAC GP',

case 
	when sum(convert(float, ltrim(rtrim(EACRevenue)))) !=0
	THEN sum(convert(float, ltrim(rtrim(EACGP))))/sum(convert(float, ltrim(rtrim(EACRevenue))))
	else 0
	end as [EAC GP%],	

sum(convert(float, ltrim(rtrim(ETCRevenue)))) 'ETC Revenue',
sum(convert(float, ltrim(rtrim(TotalContingency)))) Contingency,

case 
	when sum(convert(float, ltrim(rtrim(ETCCost)))) !=0
	THEN sum(convert(float, ltrim(rtrim(TotalContingency))))/sum(convert(float, ltrim(rtrim(ETCCost))))
	else 0
	end as [Contingency % of ETC Cost],	

sum(convert(float, ltrim(rtrim(TotalP80Risk)))) Risks,
sum(convert(float, ltrim(rtrim(Opportunities)))) Opportunities,

case 
	when sum(convert(float, ltrim(rtrim(eaccost)))) !=0
	THEN sum(convert(float, ltrim(rtrim(itdcost))))/sum(convert(float, ltrim(rtrim(eaccost))))
	else 0
	end as [POC %],	

sum(convert(float, ltrim(rtrim(ETCGP)))) 'ETC GP',

case 
	when sum(convert(float, ltrim(rtrim(ETCRevenue)))) !=0
	THEN sum(convert(float, ltrim(rtrim(ETCGP))))/sum(convert(float, ltrim(rtrim(ETCRevenue))))
	else 0
	end as [ETC GP%],	

case 
	when sum(convert(float, ltrim(rtrim(ETCRevenue)))) !=0
	THEN sum(convert(float, ltrim(rtrim(TotalContingency))))/sum(convert(float, ltrim(rtrim(ETCRevenue))))
	else 0
	end as [Contingency % of ETC Revenue]

from
pxd.TopXProjects a
left join pxd.AreaPerformanceSummary c on (a.ProjectNo = c.ProjectNo)
where a.Date_Created = (select max(Date_Created) from pxd.TopXProjects)
group by ReportPeriod,c.ProjectNo,ProjectName,ProductLine;
GO







CREATE VIEW [pxd].[Top_25_TCV_v]
AS select top 25
c.Projectno as 'Project #',
Projectname as 'Project Name'
,ProductLine as 'Business Line'
,CBRevenue as TCV,
ETCRevenue as 'ETC Revenue',
POCPercent as '% Complete'
from
pxd.TopXProjects a
left join pxd.AreaPerformanceSummary c on (a.ProjectNo = c.ProjectNo)
where a.Date_Created = (select max(Date_Created) from pxd.TopXProjects)
order by CBRevenue desc;
GO






CREATE VIEW [pxd].[vw_ProjectPerformance_Latest]
AS select 
	cast(a.reportperiod as date) ReportPeriod,
	a.ProjectNo, a.ProjectName,
	coalesce(c.New_ProjectNo, a.ProjectNo) Preferred_ProjectNo,
	coalesce(c.New_ProjectName, a.ProjectName) Preferred_ProjectName,
	a.ProductLine As Area, a.Region,
	case
		when a.ProductLine is null then 'Unknown'
		when a.ProductLine = 'Storage' then 'CB&I'
		when a.ProductLine = 'Offshore' then 'Offshore_ME'
		when a.ProductLine = 'Downstream' then 'Low Carbon'
		when a.ProductLine = 'Offshore & Subsea' then 'Subsea & Floating Facilities'
		when a.ProductLine = 'Power' then 'Low Carbon'
		when a.ProductLine = 'Fabrication' then 'Low Carbon'
		when a.ProductLine = 'Mixed' then 'Low Carbon'
		when a.ProductLine = 'Pipe Fab' then 'Low Carbon'
		when a.ProductLine = 'LNG' then 'Low Carbon'
		when a.ProductLine = 'FEED' then 'Low Carbon'
		when a.ProductLine = 'Subsea' then 'Subsea & Floating Facilities'
		else a.ProductLine
	end as ProductLine,
	case
		when b.ProjectNo is null then 0
		else 1
	end IsTopX,
	a.Status,
	a.AwardDate, a.CompletionDate as ForecastDate,
	a.POCPercent, a.OverallProgressActual, a.OverallProgressPlanned,
	a.OriginalRevenue, a.OriginalCost, a.OriginalGP,
	a.CBRevenue, a.CBCost, a.CBGP,
	a.ITDRevenue, a.ITDCost, a.ITDGP,
	a.EACRevenue, a.EACCost, a.EACGP,
	a.ETCRevenue, a.ETCCost, a.ETCGP,
	a.TotalContingency as Contingency, a.TotalP80Risk as Risk, a.Opportunities,
	-- Add CB Revenue Bin
	case
		when a.CBRevenue is null then 'Unknown'
		when a.CBRevenue < 100e6 then '$0 - $100m'
		when a.CBRevenue < 500e6 then '$100m - $500m'
		when a.CBRevenue < 1e9 then '$500m - $1bn'
		else '$1bn+'
	end as CBRevenue_Bin,
	-- Add variances for EAC GP and Total Contingency
	isnull(convert(float, ltrim(rtrim(a.EACGP))), 0.0) - isnull((
		select eacgp from pxd.AreaPerformanceSummary where
			ReportPeriod = dateadd(month, -1, a.ReportPeriod) -- prior report period
			and ProjectNo = a.ProjectNo
	), 0.0) as EACGPVariance,
	isnull(convert(float, ltrim(rtrim(a.TotalContingency))), 0.0) - isnull((
		select totalcontingency from pxd.AreaPerformanceSummary where
			ReportPeriod = dateadd(month, -1, a.ReportPeriod) -- prior report period
			and ProjectNo = a.ProjectNo
	), 0.0) as ContingencyVariance
from
	pxd.areaperformancesummary a
	left join pxd.SpecialProjects c on a.ProjectNo = c.Source_ProjectNo
	left join (
		select projectno from pxd.TopXProjects
		where date_created = (select max(date_created) from pxd.topxprojects)
	) b on coalesce(c.new_projectno, a.ProjectNo) = b.ProjectNo
where
	-- Latest period only
	a.ReportPeriod = (select max(reportperiod) from pxd.AreaPerformanceSummary)
	-- Active or topx project (even if not active)
	--and (lower(a.Status) = 'active' or not(b.ProjectNo is null))
	--and lower(a.Area) != 'storage'
	--and ProductLine !='CB&I'
	
	
union all


-- Get storage portfolio as a single consolidated line item
select
	cast(a.reportperiod as date) ReportPeriod,
	'Storage|Total' as ProjectNo, 'Storage' as ProjectName,
	'Storage|Total' as Preferred_ProjectNo, 'Storage' as Preferred_ProjectName,
	'CB&I' as Area, null as Region, 'CB&I' as ProductLine,
	1 as IsTopX, -- no topx in storage...
	'Active' as [Status],
	null as AwardDate, null as ForecastDate,
	sum(isnull(convert(float, ltrim(rtrim(a.ITDCost))),0.0)) / sum(isnull(convert(float, ltrim(rtrim(a.EACCost))), 0.0)) as POCPercent, 
	null as OverallProgressActual, null as OverallProgressPlanned,

	sum(convert(float, ltrim(rtrim(a.OriginalRevenue)))) as OriginalRevenue, 
	sum(convert(float, ltrim(rtrim(a.OriginalCost)))) as OriginalCost, 
	sum(convert(float, ltrim(rtrim(a.OriginalGP)))) as OriginalGP,
	sum(convert(float, ltrim(rtrim(a.CBRevenue)))) as CBRevenue,
	sum(convert(float, ltrim(rtrim(a.CBCost)))) as CBCost,
	sum(convert(float, ltrim(rtrim(a.CBGP)))) as CBGP,

	sum(convert(float, ltrim(rtrim(a.ITDRevenue)))) as ITDRevenue,
	sum(convert(float, ltrim(rtrim(a.ITDCost)))) as ITDCost,
	sum(convert(float, ltrim(rtrim(a.ITDGP)))) as ITDGP,
	sum(convert(float, ltrim(rtrim(a.EACRevenue)))) as EACRevenue,
	sum(convert(float, ltrim(rtrim(a.EACCost)))) as EACCost,
	sum(convert(float, ltrim(rtrim(a.EACGP)))) as EACGP,
	sum(convert(float, ltrim(rtrim(a.ETCRevenue)))) as ETCRevenue,

	sum(convert(float, ltrim(rtrim(a.ETCCost)))) as ETCCost,
	sum(convert(float, ltrim(rtrim(a.ETCGP)))) as ETCGP,
	sum(convert(float, ltrim(rtrim(a.TotalContingency)))) as Contingency,
	sum(convert(float, ltrim(rtrim(a.TotalP80Risk)))) as Risk,
	sum(convert(float, ltrim(rtrim(a.Opportunities)))) as Opportunities,

	-- Add CB Revenue Bin
	case
		when sum(convert(float, ltrim(rtrim(a.CBRevenue)))) is null then 'Unknown'
		when sum(convert(float, ltrim(rtrim(a.CBRevenue)))) < 100e6 then '$0 - $100m'
		when sum(convert(float, ltrim(rtrim(a.CBRevenue)))) < 500e6 then '$100m - $500m'
		when sum(convert(float, ltrim(rtrim(a.CBRevenue)))) < 1e9 then '$500m - $1bn'
		else '$1bn+'
	end as CBRevenue_Bin,
	-- Add variances for EAC GP and Total Contingency
	sum(isnull(convert(float, ltrim(rtrim(a.EACGP))), 0.0)) - isnull((
		select sum(convert(float, ltrim(rtrim(eacgp)))) from pxd.AreaPerformanceSummary where
			ReportPeriod = dateadd(month, -1, a.ReportPeriod) -- prior report period
			and ProductLine = a.Productline and lower([status]) = 'active'
	), 0.0) as EACGPVariance,
	sum(isnull(convert(float, ltrim(rtrim(a.TotalContingency))), 0.0)) - isnull((
		select sum(convert(float, ltrim(rtrim(totalcontingency)))) from pxd.AreaPerformanceSummary where
			ReportPeriod = dateadd(month, -1, a.ReportPeriod) -- prior report period
			and Productline = a.ProductLine and lower([status]) = 'active'
	), 0.0) as ContingencyVariance
from
	pxd.areaperformancesummary a
where
	-- Latest period only
	a.ReportPeriod = (select max(reportperiod) from pxd.AreaPerformanceSummary)
	-- Active or topx project (even if not active)
	--and lower(a.Status) = 'active'
	--and lower(a.Area) = 'storage'
	--and ProductLine='CB&I'
group by
	a.reportperiod,a.ProductLine;
GO










CREATE VIEW [pxd].[vw_ProjectPerformance_Trend]
AS select
	a.ID, cast(a.reportperiod as date) ReportPeriod,
	a.ProjectNo, a.ProjectName,
	coalesce(c.New_ProjectNo, a.ProjectNo) Preferred_ProjectNo,
	coalesce(c.New_ProjectName, a.ProjectName) Preferred_ProjectName,
	a.Area, a.Region,
	case
		when a.ProductLine is null then 'Unknown'
		when a.ProductLine = 'Storage' then 'CB&I'
		when a.ProductLine = 'Offshore' then 'Offshore_ME'
		when a.ProductLine = 'Downstream' then 'Onshore'
		when a.ProductLine = 'Offshore & Subsea' then 'Subsea & Floating Facilities'
		when a.ProductLine = 'Power' then 'Onshore'
		when a.ProductLine = 'Fabrication' then 'Onshore'
		when a.ProductLine = 'Mixed' then 'Onshore'
		when a.ProductLine = 'Pipe Fab' then 'Onshore'
		when a.ProductLine = 'LNG' then 'Onshore'
		when a.ProductLine = 'FEED' then 'Onshore'
		when a.ProductLine = 'Subsea' then 'Subsea & Floating Facilities'
		else a.ProductLine
	end as ProductLine,
	case
		when b.ProjectNo is null then 0
		else 1
	end IsTopX,
	a.Status,
	a.AwardDate, a.CompletionDate as ForecastDate,
	a.POCPercent, 
	a.OverallProgressActual, 
	a.OverallProgressPlanned,
	a.OriginalRevenue, a.OriginalCost, a.OriginalGP,
	a.CBRevenue, a.CBCost, a.CBGP,
	a.ITDRevenue, a.ITDCost, a.ITDGP,
	a.EACRevenue, a.EACCost, a.EACGP,
	a.ETCRevenue, a.ETCCost, a.ETCGP,
	a.TotalContingency as Contingency, a.TotalP80Risk as Risk, a.Opportunities,
	-- Add CB Revenue Bin
	case
		when a.CBRevenue is null then 'Unknown'
		when convert(float, ltrim(Rtrim(a.CBRevenue))) < 100e6 then '$0 - $100m'
		when convert(float, ltrim(Rtrim(a.CBRevenue))) < 500e6 then '$100m - $500m'
		when convert(float, ltrim(Rtrim(a.CBRevenue))) < 1e9 then '$500m - $1bn'
		else '$1bn+'
	end as CBRevenue_Bin,
	-- Add variances for EAC GP and Total Contingency
	isnull(convert(float, ltrim(Rtrim(a.EACGP))), 0.0) - isnull((
		select convert(float, ltrim(Rtrim(eacgp))) from pxd.AreaPerformanceSummary where
			ReportPeriod = dateadd(month, -1, a.ReportPeriod) -- prior report period
			and ProjectNo = a.ProjectNo
	), 0.0) as EACGPVariance,
	isnull(convert(float, ltrim(Rtrim(a.TotalContingency))), 0.0) - isnull((
		select convert(float, ltrim(Rtrim(totalcontingency))) from pxd.AreaPerformanceSummary where
			ReportPeriod = dateadd(month, -1, a.ReportPeriod) -- prior report period
			and ProjectNo = a.ProjectNo
	), 0.0) as ContingencyVariance
from
	pxd.areaperformancesummary a
	left join pxd.SpecialProjects c on a.ProjectNo = c.Source_ProjectNo
	left join (
		select projectno from pxd.TopXProjects
		where date_created = (select max(date_created) from pxd.topxprojects)
	) b on coalesce(c.new_projectno, a.ProjectNo) = b.ProjectNo
where
	-- Rolling 12 months of data through most recent report period
	a.reportperiod >= dateadd(month, -11, (select max(reportperiod) from pxd.areaperformancesummary));
GO









CREATE VIEW [pxd].[SRA_Tabular_Summary_Report_v] AS select 
a.ReportPeriod as [Report Period]
,a.[Area]
,a.ProjectNo as [Project No.]
,a.ProjectName as [Project Name]
,(select p.[top_x_flag] from [dbo].[dim_entp_project_active_v] p where a.[ProjectNo] = p.[project_number]) as [IsTopX]
,a.ProductLine as [Product Line]
,a.AwardDate as [Award Date]
,b.CompletionDate as [Completion Date]
,a.POCPercent as [POC%]
,a.ETCRevenue as [ETC Revenue]
,a.OverallProgressPlanned as [Overall Progress Planned]
,a.OverallProgressActual as [Overall Progress Actual]
,a.SchOrigBaseCompDate as [Schedule Original Baseline Completion Date]
,a.SchCurrBaseCompDate as [Schedule Current Baseline Completion Date]
,b.deterministic_pvalue as [Performance Deterministic P Value]
,b.deterministic_date as [Performance Determinisitc Date]
,b.p0_date as [Performance P0 Date]
,b.p20_date as [Performance P20 Date]
,b.p50_date as [Performance P50 Date]
,b.p80_date as [Performance P80 Date]
,b.p100_date as [Performance P100 Date]
,DATEDIFF(Day,cast(a.ProjDeterministicDate as date),cast(a.ProjP80Date as date)) as [Delay (P80 vs Deterministic)]
,DATEDIFF(Day,cast(b.deterministic_date as date),cast(b.p80_date as date)) as [Delay (P80 vs Deterministic Performance)]
--,a.[Potential Impact]					-- calculation

,a.ProjDeterministicDate as [Project Deterministic Date]
,a.ProjDeterministicPValue as [Project Deterministic P Value]
,a.ProjP0Date as [Project P0 Date]
,a.ProjP20Date as [Project P20 Date]
,a.ProjP50Date as [Project P50 Date]
,a.ProjP80Date as [Project P80 Date]
,a.ProjP100Date as [Project P100 Date]

--,a.[Avg. Monthly Cost]				-- calculation
--,a.[Daily Burn Rate]                  -- calculation

FROM [pxd].[AreaPerformanceSummary] a
left outer join [pxd].[SRAData] b
on a.ProjectNo = b.project_number;
GO












