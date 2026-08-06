DROP VIEW [promt].[Opportunity information History]
GO

CREATE VIEW [promt].[Opportunity information History] ([Opportunity ID], [Opportunity Number], [Opportunity Ro Category Description], [Opportunity Sub Category], [Opportunity Title], [Opportunity Drivers Causes], [Opportunity Description], [Opportunity Record Date], [Opportunity Probability Range Percentage Description], [Opportunity Probability Range Percentage Display Order], [Opportunity Environment Description], [Opportunity Health Safety Security Description], [Opportunity Quality Description], [Opportunity Reputation Description], [Opportunity Social Culture Description], [Opportunity Cost Impact TCV Percentage Description], [Opportunity Schedule Description], [Opportunity Overall Impact Description], [Opportunity Overall Impact Description Display Order], [Opportunity Severity Score], [Opportunity Severity Score Description], [Opportunity Severity Score Display Order], [Hilp], [Opportunity Owner], [Opportunity Due Date], [Opportunity Status Description], [Opportunity Closing Justification Description], [Opportunity Actions], [Opportunity Cost], [Opportunity Response Status Description], [Opportunity Action Due Date], [Opportunity Probability], [Opportunity Best Case], [Opportunity Most Likely], [Opportunity Worst Case], [Opportunity Discrete Value], [Opportunity Bottom Value], [Opportunity Top Value], [Opportunity Lower Probability], [Opportunity Min Value], [Opportunity Max Value], [Opportunity Distribution Type Description], [Risk Function], [Project ID], [Project], [Active flag], [Created dtm], [Created by], [Modified dtm], [Modified by], [Risk Modeling Tech Description], [Opportunity Version Number], [Opportunity Due Date Flag], [Opportunity Action Due Date Flag], [Closed Dtm], [Archived], [Rearchival Date], [Event P80])
AS SELECT 
	a.opportunity_id
	,a.opportunity_no
	,NULLIF(a1.[Ro Category Description],'') as [Ro Category Description]
	,NULLIF(a1.[Sub Category],'') as [Sub Category]
	,a.opportunity_title
	,a.drivers_causes
	,a.description
	,a.record_date	
	,NULLIF(a2.[probability range percentage description],'') as [probability range percentage description]
	,NULLIF(a2.[probability range percentage display order],'') as [probability range percentage display order]
	,NULLIF(a3.[environment description],'') as [environment description]
	,NULLIF(a4.[health safety security description],'') as [health safety security description]
	,NULLIF(a5.[quality description],'') as [quality description]
	,NULLIF(a6.[reputation description],'') as [reputation description]
	,NULLIF(a7.[social culture description],'') as [social culture description]
	,NULLIF(a8.[cost impact tcv percentage description],'') as [cost impact tcv percentage description]
	,NULLIF(a9.[schedule description],'') as [schedule description]
	,case 
		when a15.[Overall Impact] = 1 then '1. Very Low'
		when a15.[Overall Impact] = 2 then '2. Low'
		when a15.[Overall Impact] = 3 then '3. Medium'
		when a15.[Overall Impact] = 4 then '4. High'
		when a15.[Overall Impact] = 5 then '5. Very High'
		else null
	  end as overall_impact_description
	,NULLIF(a15.[Overall Impact Display Sort Order],'') as [Overall Impact Display Sort Order]
	,a.severity_score
	,case 
		when a.severity_score >= 1 AND a.severity_score <= 3 then '1. Fair'
		when a.severity_score >= 4 AND  a.severity_score <= 9 then '2. Good'
		when a.severity_score >= 10 AND  a.severity_score <= 15 then '3. Very Good'
		when a.severity_score >= 16 AND  a.severity_score <= 25 then '4. Excellent'
		else
		null
	end
	,case 
		when a.severity_score >= 1 AND a.severity_score <= 3 then 1
		when a.severity_score >= 4 AND  a.severity_score <= 9 then 2
		when a.severity_score >= 10 AND  a.severity_score <= 15 then 3
		when a.severity_score >= 16 AND  a.severity_score <= 25 then 4
		else
		0
	end
	,a.hilp
	,a.opportunity_owner
	,a.opportunity_due_date
	,NULLIF(a10.[opportunity status description],'') as [opportunity status description]
	,NULLIF(a11.[opportunity closing justification description],'') as [opportunity closing justification description]
    ,a.actions
    ,a.opportunity_cost
	,NULLIF(a14.[Respose Status Description],'') as [Respose Status Description]
	,a.action_due_date
    ,a.probability
    ,a.best_case
    ,a.most_likely
    ,a.worst_case
    ,a.discrete_value
    ,a.bottom_value
    ,a.top_value
    ,a.lower_probability
    ,a.min_value
    ,a.max_value
	,NULLIF(a12.[distribution type description],'') as [distribution type description] 
    ,a.risk_function
	,a.[t_project_id]
	,a16.[Project Number] + ' - ' + a16.[Project Project Title] 
	,a.active_flag
	,a.created_dtm
    ,a.created_by
    ,a.dl_touched_dtm
	,a.created_by
	,NULLIF(a13.[risk modeling tech description],'') as [risk modeling tech description]
    , a.version_no
	,case when Convert(Date,a.opportunity_due_date) < Convert(Date,GetDate()) then 0
	  when Convert(Date,a.opportunity_due_date) >= Convert(Date,GetDate()) then 1
	 end
	,case	when Convert(Date,a.action_due_date) < Convert(Date,GetDate()) then 0
			when Convert(Date,a.action_due_date) >= Convert(Date,GetDate()) then 1
	 end
	,a.closed_dtm
	,a.archived
	,a.rearchival_date
	,a.event_p80
	 
  FROM [promt].[fact_promt_opportunity] a
		left outer join [promt].[dim_ent_promt_risk_opportunity_category_active_v]
			a1 on a1.[dim_ent_risk_opportunity_category_nk] = a.[dim_ent_risk_opportunity_category_nk]
	left outer join [promt].[dim_ent_promt_probability_range_percentage_active_v] 
					a2 on a2.[dim_ent_probability_range_percentage_nk] = a.[dim_ent_probability_range_percentage_nk]
	left outer join [promt].[dim_ent_promt_environment_active_v]
					a3 on a3.[dim_ent_environment_nk] = a.[dim_ent_environment_nk]
	left outer join [promt].[dim_ent_promt_health_safety_security_active_v]
					a4 on a4.[dim_ent_health_safety_security_nk] = a.[dim_ent_health_safety_security_nk]
	left outer join [promt].[dim_ent_promt_quality_active_v]
					a5 on a5.[dim_ent_quality_nk] = a.[dim_ent_quality_nk]
	left outer join [promt].[dim_ent_promt_reputation_active_v]
					a6 on a6.[dim_ent_reputation_nk] = a.[dim_ent_reputation_nk]
	left outer join [promt].[dim_ent_promt_social_culture_active_v]
					a7 on a7.[dim_ent_social_culture_nk] = a.[dim_ent_social_culture_nk]
	left outer join [promt].[dim_ent_promt_cost_impact_tcv_percentage_active_v]
					a8 on a8.[dim_ent_cost_impact_tcv_percentage_nk] = a.[dim_ent_cost_impact_tcv_percentage_nk]
	left outer join [promt].[dim_ent_promt_schedule_active_v]
					a9 on a9.[dim_ent_schedule_nk]= a.[dim_ent_schedule_nk]
	left outer join [promt].[dim_ent_promt_opportunity_status_active_v]
					a10 on a10.[dim_ent_opportunity_status_nk] = a.[dim_ent_opportunity_status_nk]
	left outer join [promt].[dim_ent_promt_opportunity_closing_justification_active_v]
					a11 on a11.[dim_ent_opportunity_closing_justification_nk] = a.[dim_ent_opportunity_closing_justification_nk]
	left outer join [promt].[dim_ent_promt_distribution_type_active_v]
					a12 on a12.[dim_ent_distribution_type_nk] = a.[dim_ent_distribution_type_nk]
	left outer join [promt].[dim_ent_promt_risk_modeling_tech_active_v]
					a13 on a13.[dim_ent_risk_modeling_tech_nk] = a.[dim_ent_risk_modeling_tech_nk]
	left outer join [promt].[dim_ent_promt_response_status_active_v]
					a14 on a14.[dim_ent_response_status_nk] = a.[dim_ent_response_status_nk]
	left outer join [promt].[dim_ent_promt_overall_impact_active_v]	
					a15 on a15.[dim_ent_overall_impact_nk] = a.[dim_ent_overall_impact_nk]
	left outer join [promt].[dim_ent_promt_project_active_v]
				a16 on a16.[dim_ent_promt_project_nk] = a.[dim_ent_promt_project_nk]
	where
		process_date = ( SELECT MAX(process_date) from [promt].[fact_promt_opportunity] a17
						 where a17.opportunity_id = a.opportunity_id 
								and a17.opportunity_no = a.opportunity_no and 
								a17.t_project_id = a.t_project_id );
GO


