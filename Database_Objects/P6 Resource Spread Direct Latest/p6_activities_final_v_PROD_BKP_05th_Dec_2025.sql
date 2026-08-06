/****** Object:  View [pxd].[p6_activities_final_v]    Script Date: 12/5/2025 5:50:05 PM ******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
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

	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - CHANGE MANAGEMENT') as globalChangeManagement
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - EXECUTED BY TYPE') as globalExecutedByType
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - FUNCTION') as globalFunction
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - MILESTONES') as globalMilestones
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - OFFICE') as globalOffice
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - PHASE') as globalPhase
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - PRIME') as globalPrime
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - PRIME (GCOA V11)') as globalPrimeV11
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - PRIME (GCOA V13)') as globalPrimeV13
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - REGION') as globalRegion
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - SCHEDULE RISK ASSESSMENT') as globalScheduleRiskAssessment
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - STORAGE SOLUTIONS') as globalStorageSolutions
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - SUBPRIME') as globalSubPrime
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - SUBPRIME (GCOA V11)') as globalSubPrimeV11
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - SUBPRIME (GCOA V13)') as globalSubPrimeV13
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - SUPPLY CHAIN') as globalSupplyChain
	  
	  ,a.[created_dttm]
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - ARCHIVE') as globalArchive
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - BUSINESS LINE') as globalBusinessLine
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - PROJECT') as globalProject
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - CWA (DECK LEVEL)') as globalCwaDeckLevel
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - CWA (VOLUME)') as globalCwaVolume
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - ENG & PROC ROC') as globalEngAndProcRoc
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - EPMR') as globalEpmr
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - FABRICATION AREA') as globalFabricationArea
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - FAB COMPONENTS') as globalFabComponents
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - GAC CODE') as globalGacCode
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - PRIME (GCOA V15)') as globalPrimeGcoaV15
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - SUBPRIME (GCOA V15)') as globalSubPrimeGcoaV15
	  
	  , (SELECT activity_code_value from [pxd].[p6_activity_attributes_v] attr where attr.activity_object_id= a.activityObjectId and attr.activity_code_type_name='GLOBAL - STRUCTURE') as globalStructure
	  
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


