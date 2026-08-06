CREATE VIEW [gpd].[NCSA_Activity_v]
AS SELECT
ROW_NUMBER() OVER(order by (select 0) ) as [stage_ncsa_activity_id]
,P.[Project]
,P.[ProjectDescription]
,P.[activity]
,P.[Description]
,P.[ScheduleUnit]
,P.[ScheduleResource]
,P.[ActivityStatus]
,P.[OriginalDuration]
,P.[RemainingDuration]
,P.[ActualStart]
,P.[ActualFinish]
,P.[PercentCompleteType]
,P.[ExecutedByType]
,P.[Prime]
,P.[SubPrime]
,P.[ScheduleWorkArea]
,P.[ExecutedBy]
,P.[EarlyStartDate]
,P.[EarlyFinishDate]
,P.[IsOnCriticalPath]
,P.[TotalFloat]
,P.[CWP]
,P.[CWPDescription]
,P.[ProjectID]
,P.[S_WorkArea]
,P.[PlannedStart]
,P.[PlannedFinish]
,P.[dim_entp_project_nk]

,A.actual_duration
,A.remaining_late_start
,A.remaining_late_finish
,A.calendar
,A.budgeted_units
,A.actual_units
,A.remaining_units
,A.wbs
,A.wbs_name
,A.cost_account
,A.role_is
,A.change_management
,A.funct
,A.milestones
,A.office
,A.dim_entp_phase_nk
,A.region
,A.schedule_risk_assessment
,A.supply_chain
FROM [gpd].[NCSA_Activity] P
left join [dbo].[dim_entp_activity] A
on P.activity = A.activity_code
and P.project=A.project_number
and A.active=1