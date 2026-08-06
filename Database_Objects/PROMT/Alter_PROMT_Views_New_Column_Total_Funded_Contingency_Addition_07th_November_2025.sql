DROP VIEW [promt].[dim_ent_promt_project_active_v]
GO

CREATE VIEW [promt].[dim_ent_promt_project_active_v]
AS SELECT 
[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[t_project_id] as [Project ID]
,[project_no] as [Project Number]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[project_pc_code] as [Project Pc Code]
,[project_pc_code_description] as [Project Pc Code Description]
,[project_bid_project_id] as [Project Bid Project Id]
,[project_project_title] as [Project Project Title]
,[project_client_name] as [Project Client Name]
,[project_business_line] as [Project Business Line]
,[project_business_line_description] as [Project Business Line Description]
,[project_country] as [Project Country]
,[project_manager] as [Project Manager]
,[project_prom_lead] as [Project Prom Lead]
,[project_category] as [Project Category]
,[project_category_description] as [Project Category Description]
,[project_total_contract_value] as [Project Total Contract Value]
,[project_estimated_cost] as [Project Estimated Cost]
,[project_currency_code] as [Project Currency Code]
,[project_currency_code_description] as [Project Currency Code Description]	
,[project_contract_type] as [Project Contract Type]
,[project_contract_type_description] as [Project Contract Type Description]
,[project_total_duration] as [Project Total Duration]
,[project_document_revision_no] as [Project Document Revision No]
,[project_document_revision_date] as [Project Document Revision Date]
,[project_revisied_by] as [Project Revisied By]
,[project_approved_by] as [Project Approved By]
,[project_award_date] as [Project Award Date]
,[project_active_flag] as [Project Active Flag]
,[project_project_type] as [Project Project Type]
,[project_project_type_description] as [Project Project Type Description]
,[project_duration_type] as [Project Duration Type]
,[project_version_no] as [Project Version No]
,[project_status] as [Project Status]
,[project_status_description] as [Project Status Description]
,[closed_dtm] as [Closed Dtm]
,[archived] as [Archived]
,[rearchival_date] as [Rearchival Date]
,[event_p80] as [Event P80]
,[Total_Funded_Contingency] as [Total Funded Contingency]


FROM [promt].[dim_ent_promt_project]
where active = 1;
GO




DROP VIEW [promt].[dim_ent_promt_project_snapshot_active_v]
GO

CREATE VIEW [promt].[dim_ent_promt_project_snapshot_active_v]
AS SELECT 
[dim_ent_promt_project_sk]
,[dim_ent_promt_project_nk]
,[t_project_id] as [Project ID]
,[ss_id] as [SS ID]
,[project_no] as [Project Number]
,[start_date] as [Start Date]
,[end_date] as [End Date]
,[hash_code] as [Hash Code]
,[active] as [Active]
,[created_date_time] as [Created Date Time]
,[modified_date_time] as [Modified Date Time]
,[late_arrival_flag] as [Late Arrival Flag]
,[project_pc_code] as [Project Pc Code]
,[project_pc_code_description] as [Project Pc Code Description]
,[project_bid_project_id] as [Project Bid Project Id]
,[project_project_title] as [Project Project Title]
,[project_client_name] as [Project Client Name]
,[project_business_line] as [Project Business Line]
,[project_business_line_description] as [Project Business Line Description]
,[project_country] as [Project Country]
,[project_manager] as [Project Manager]
,[project_prom_lead] as [Project Prom Lead]
,[project_category] as [Project Category]
,[project_category_description] as [Project Category Description]
,[project_total_contract_value] as [Project Total Contract Value]
,[project_estimated_cost] as [Project Estimated Cost]
,[project_currency_code] as [Project Currency Code]
,[project_currency_code_description] as [Project Currency Code Description]	
,[project_contract_type] as [Project Contract Type]
,[project_contract_type_description] as [Project Contract Type Description]
,[project_total_duration] as [Project Total Duration]
,[project_document_revision_no] as [Project Document Revision No]
,[project_document_revision_date] as [Project Document Revision Date]
,[project_revisied_by] as [Project Revisied By]
,[project_approved_by] as [Project Approved By]
,[project_award_date] as [Project Award Date]
,[project_active_flag] as [Project Active Flag]
,[project_project_type] as [Project Project Type]
,[project_project_type_description] as [Project Project Type Description]
,[project_duration_type] as [Project Duration Type]
,[project_version_no] as [Project Version No]
,[project_status] as [Project Status]
,[project_status_description] as [Project Status Description]
,[closed_dtm] as [Closed Dtm]
,[archived] as [Archived]
,[rearchival_date] as [Rearchival Date]
,[event_p80] as [Event P80]
,[Total_Funded_Contingency] as [Total Funded Contingency]


FROM [promt].[dim_ent_promt_project_snapshot]
where active = 1;
GO






DROP VIEW [promt].[Projects]
GO

CREATE VIEW [promt].[Projects]
AS select *,[project Number]+' - '+[Project Project Title] as Project from [promt].[dim_ent_promt_project_active_v];
GO





DROP VIEW [promt].[Projects History]
GO

CREATE VIEW [promt].[Projects History]
AS select * from [promt].[dim_ent_promt_project_active_v];
GO






DROP VIEW [promt].[Projects History Snapshot]
GO

CREATE VIEW [promt].[Projects History Snapshot]
AS select * from [promt].[dim_ent_promt_project_snapshot_active_v];
GO






DROP VIEW [promt].[risk information]
GO

CREATE VIEW [promt].[risk information] ([Risk ID], [Risk No], [Risk Ro Category Description], [Risk Sub Category], [Risk Title], [Risk Description], [Risk Record Date], [Risk Probability Range Percentage Description], [Risk Probability Range Percentage Description Display Order], [Risk Environment Description], [Risk Health Safety Security Description], [Risk Quality Description], [Risk Reputation Description], [Risk Social Culture Description], [Risk Cost Impact TCV Percentage Description], [Risk Schedule Description], [Risk Overall Impact Description], [Risk Overall Impact Description Display Order], [Risk Severity Score], [Risk Severity Score Description], [Risk Severity Score Description Display Order], [Hilp], [Risk Owner], [Risk Status Description], [Risk Closing Justification Description], [Risk Strategy Pre Contract Description], [Risk Strategy Execution Description], [Risk Actions], [Risk Actions status], [Risk Cost Mitigation], [Risk Actions Status ID], [Risk Action Due Date], [Mitigation Probability Range Percentage Description], [Mitigation Probability Range Percentage Description Disply Order], [Mitigation Environment Description], [Mitigation Health Safety Security Description], [Mitigation Quality Description], [Mitigation Reputation Description], [Mitigation Social Culture ID], [Mitigation Cost Impact TCV Percentage Description], [Mitigation Schedule Description], [Mitigation Overall Impact Description], [Mitigation Overall Impact Description Display Order], [Mitigation Severity Score], [Mitigation Severity Score Description], [Mitigation Severity Score Description Display Order], [Mitigation Hilp], [Risk Probability], [Risk Best Case], [Risk Most Likely], [Risk Worst Case], [Risk Discrete Value], [Risk Bottom Value], [Risk Top Value], [Risk Lower Probability], [Risk Min Value], [Risk Max Value], [Risk Distribution Type Description], [Risk Function 1], [Mitigation Risk Probability], [Mitigation Risk Best Case], [Mitigation Risk Most Likely], [Mitigation Risk Worst Case], [Mitigation Risk Discrete Value], [Mitigation Risk Bottom Value], [Mitigation Risk Top Value], [Mitigation Risk Lower Probability], [Mitigation Risk Min Value], [Mitigation Risk Max Value], [Risk Function 2], [Shared Externally Risk Description], [Driver Causes], [Risk Due Date], [Mitigation Risk Cost], [Risk Modeling Technology Description], [Project ID], [Active flag], [Created dtm], [Created by], [Modified dtm], [Modified by], [Risk Version Number], [Mitigation Fully Transferred], [Mitigation Fully Avoided], [Expected Value At Risk], [Expected Value At Risk Pre Contract], [Project], [Risk Due Date Flag], [Risk Action Due Date Flag], [Ranking Pre-Contract], [Ranking Execution], [Closed Dtm], [Archived], [Rearchival Date], [Cost Impact Ranging Basis], [Weighted Value at-Risk], [Event P80], [Total Funded Contingency])
AS SELECT distinct
[promt].[fact_promt_risk].risk_id
,[promt].[fact_promt_risk].risk_no
,NULLIF(a1.[Ro Category Description],'') as [Ro Category Description]
,NULLIF(a1.[Sub Category],'') as [Sub Category] 
,[promt].[fact_promt_risk].risk_title
,[promt].[fact_promt_risk].description
,[promt].[fact_promt_risk].record_date
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
	when a26.[Overall Impact] = 1 then '1. Very Low'
	when a26.[Overall Impact] = 2 then '2. Low'
	when a26.[Overall Impact] = 3 then '3. Medium'
	when a26.[Overall Impact] = 4 then '4. High'
	when a26.[Overall Impact] = 5 then '5. Very High'
	else null
  end as overall_impact_description
,NULLIF(a26.[Overall Impact Display Sort Order],'') as [Overall Impact Display Sort Order]
,[promt].[fact_promt_risk].severity_score
,case 
	when [promt].[fact_promt_risk].severity_score >= 1 AND [promt].[fact_promt_risk].severity_score <= 3  then '1. Low'
	when [promt].[fact_promt_risk].severity_score >= 4 AND [promt].[fact_promt_risk].severity_score <= 9 then '2. Medium'
	when [promt].[fact_promt_risk].severity_score >= 10 AND [promt].[fact_promt_risk].severity_score <= 15 then '3. High'
	when [promt].[fact_promt_risk].severity_score >= 16 AND [promt].[fact_promt_risk].severity_score <= 25 then '4. Extreme'
	else
	null
end
,case 
	when [promt].[fact_promt_risk].severity_score >= 1 AND [promt].[fact_promt_risk].severity_score <= 3  then 1
	when [promt].[fact_promt_risk].severity_score >= 4 AND [promt].[fact_promt_risk].severity_score <= 9 then 2
	when [promt].[fact_promt_risk].severity_score >= 10 AND [promt].[fact_promt_risk].severity_score <= 15 then 3
	when [promt].[fact_promt_risk].severity_score >= 16 AND [promt].[fact_promt_risk].severity_score <= 25 then 4
		else
	0
end risk_serverity_score_description_display_order
,[promt].[fact_promt_risk].hilp
,[promt].[fact_promt_risk].risk_owner
,NULLIF(a10.[risk status description], '') as [risk status description]
,NULLIF(a11.[closing justification description],'') as [closing justification description]
,NULLIF(a12.[strategy pre contract description],'') as [strategy pre contract description] 
,NULLIF(a13.[strategy execution description],'') as [strategy execution description]
,[promt].[fact_promt_risk].actions
,NULLIF(a14.[action status description],'') as [action status description]
,[promt].[fact_promt_risk].cost_mitigation
,NULLIF(a14.[action status],'') as [action status]
,[promt].[fact_promt_risk].[action_due_date]
,NULLIF(a15.[mit probability range percentage description],'') as [mit probability range percentage description]
,NULLIF(a15.[mit probability range percentage display order],'') as [mit probability range percentage display order]
,NULLIF(a16.[mit environment description],'') as [mit environment description]
,NULLIF(a17.[mit health safety security description],'') as [mit health safety security description]
,NULLIF(a18.[mit quality description],'') as [mit quality description]
,NULLIF(a19.[Mit Reputation Description],'') as [Mit Reputation Description]
,NULLIF(a20.[mit social culture description],'') as [mit social culture description]
,NULLIF(a21.[mit cost impact tcv percentage description],'') as [mit cost impact tcv percentage description]
,NULLIF(a22.[Mit Schedule Description],'') as [Mit Schedule Description]
, case 
	when a27.[Mit Overall Impact] = 1 then '1. Very Low'
	when a27.[Mit Overall Impact] = 2 then '2. Low'
	when a27.[Mit Overall Impact] = 3 then '3. Medium'
	when a27.[Mit Overall Impact] = 4 then '4. High'
	when a27.[Mit Overall Impact] = 5 then '5. Very High'
	else null
  end as mit_overall_impact_description
,NULLIF(a27.[Mit Overall Impact Display Sort Order],'') as [Mit Overall Impact Display Sort Order]
,[promt].[fact_promt_risk].mit_severity_score
,case 
	when [promt].[fact_promt_risk].mit_severity_score >= 1 AND [promt].[fact_promt_risk].mit_severity_score <= 3  then '1. Low'
	when [promt].[fact_promt_risk].mit_severity_score >= 4 AND [promt].[fact_promt_risk].mit_severity_score <= 9 then '2. Medium'
	when [promt].[fact_promt_risk].mit_severity_score >= 10 AND [promt].[fact_promt_risk].mit_severity_score <= 15 then '3. High'
	when [promt].[fact_promt_risk].mit_severity_score >= 16 AND [promt].[fact_promt_risk].mit_severity_score <= 25 then '4. Extreme'
	else
	null
end
,case 
	when [promt].[fact_promt_risk].mit_severity_score >= 1 AND [promt].[fact_promt_risk].mit_severity_score <= 3  then 1
	when [promt].[fact_promt_risk].mit_severity_score >= 4 AND [promt].[fact_promt_risk].mit_severity_score <= 9 then 2
	when [promt].[fact_promt_risk].mit_severity_score >= 10 AND [promt].[fact_promt_risk].mit_severity_score <= 15 then 3
	when [promt].[fact_promt_risk].mit_severity_score >= 16 AND [promt].[fact_promt_risk].mit_severity_score <= 25 then 4
	else
	0
end
,[promt].[fact_promt_risk].mit_hilp
,[promt].[fact_promt_risk].probability
,[promt].[fact_promt_risk].best_case
,[promt].[fact_promt_risk].most_likely
,[promt].[fact_promt_risk].worst_case
,[promt].[fact_promt_risk].discrete_value
,[promt].[fact_promt_risk].bottom_value
,[promt].[fact_promt_risk].top_value
,[promt].[fact_promt_risk].lower_probability
,[promt].[fact_promt_risk].min_value
,[promt].[fact_promt_risk].max_value
,NULLIF(a23.[Distribution Type Description],'') as [Distribution Type Description]
,[promt].[fact_promt_risk].risk_function1
,[promt].[fact_promt_risk].mit_probability
,[promt].[fact_promt_risk].mit_best_case
,[promt].[fact_promt_risk].mit_most_likely
,[promt].[fact_promt_risk].mit_worst_case
,[promt].[fact_promt_risk].mit_discrete_value
,[promt].[fact_promt_risk].mit_bottom_value
,[promt].[fact_promt_risk].mit_top_value
,[promt].[fact_promt_risk].mit_lower_probability
,[promt].[fact_promt_risk].mit_min_value
,[promt].[fact_promt_risk].mit_max_value
,[promt].[fact_promt_risk].risk_function_2
,NULLIF(a24.[Shared Externaly Description],'') as [Shared Externaly Description]
,[promt].[fact_promt_risk].drivers_causes
,[promt].[fact_promt_risk].risk_due_date
,[promt].[fact_promt_risk].mit_cost
,NULLIF(a25.[risk modeling tech description],'') as [risk modeling tech description]
,[promt].[fact_promt_risk].[t_project_id]
,[promt].[fact_promt_risk].active_flag
,[promt].[fact_promt_risk].created_dtm
,[promt].[fact_promt_risk].created_by
,[promt].[fact_promt_risk].dl_touched_dtm
,[promt].[fact_promt_risk].created_by
,[promt].[fact_promt_risk].version_no
,NULLIF(a31.[Mit Fully Transferred],'') as [Mit Fully Transferred]
,NULLIF(a32.[Mit Fully Avoided],'') as [Mit Fully Avoided]
,[promt].[fact_promt_risk].expected_value_at_risk
,[promt].[fact_promt_risk].expected_value_at_risk_pre_contract
,a28.[Project Number] + ' - ' + a28.[Project Project Title] 
,case when Convert(Date,[promt].[fact_promt_risk].risk_due_date) < Convert(Date,GetDate()) then 0
	  when Convert(Date,[promt].[fact_promt_risk].risk_due_date) >= Convert(Date,GetDate()) then 1
	 end
,case when Convert(Date,[promt].[fact_promt_risk].action_due_date) < Convert(Date,GetDate()) then 0
	  when Convert(Date,[promt].[fact_promt_risk].action_due_date) >= Convert(Date,GetDate()) then 1
	 end
,ROW_NUMBER() OVER (ORDER BY [promt].[fact_promt_risk].severity_score desc,[promt].[fact_promt_risk].expected_value_at_risk_pre_contract desc)
,ROW_NUMBER() OVER (ORDER BY [promt].[fact_promt_risk].mit_severity_score desc,[promt].[fact_promt_risk].expected_value_at_risk desc)
,[promt].[fact_promt_risk].closed_dtm
,[promt].[fact_promt_risk].archived
,[promt].[fact_promt_risk].rearchival_date
,[promt].[fact_promt_risk].cost_impact_ranging_basis
,[promt].[fact_promt_risk].weighted_value_at_risk
,[promt].[fact_promt_risk].event_p80
,[promt].[fact_promt_risk].Total_Funded_Contingency

from [promt].[fact_promt_risk] 
	left outer join [promt].[dim_ent_promt_risk_opportunity_category_active_v] 
					a1 on a1.[dim_ent_risk_opportunity_category_nk] = [promt].[fact_promt_risk].[dim_ent_risk_opportunity_category_nk]
	left outer join [promt].[dim_ent_promt_probability_range_percentage_active_v] 
					a2 on a2.[dim_ent_probability_range_percentage_nk] = [promt].[fact_promt_risk].[dim_ent_probability_range_percentage_nk]
	left outer join [promt].[dim_ent_promt_environment_active_v]
					a3 on a3.[dim_ent_environment_nk] = [promt].[fact_promt_risk].[dim_ent_environment_nk]
	left outer join [promt].[dim_ent_promt_health_safety_security_active_v]
					a4 on a4.[dim_ent_health_safety_security_nk] = [promt].[fact_promt_risk].[dim_ent_health_safety_security_nk]
	left outer join [promt].[dim_ent_promt_quality_active_v]
					a5 on a5.[dim_ent_quality_nk] = [promt].[fact_promt_risk].[dim_ent_quality_nk]
	left outer join [promt].[dim_ent_promt_reputation_active_v]
					a6 on a6.[dim_ent_reputation_nk] = [promt].[fact_promt_risk].[dim_ent_reputation_nk]
	left outer join [promt].[dim_ent_promt_social_culture_active_v]
					a7 on a7.[dim_ent_social_culture_nk] = [promt].[fact_promt_risk].[dim_ent_social_culture_nk]
	left outer join [promt].[dim_ent_promt_cost_impact_tcv_percentage_active_v]
					a8 on a8.[dim_ent_cost_impact_tcv_percentage_nk] = [promt].[fact_promt_risk].[dim_ent_cost_impact_tcv_percentage_nk]
	left outer join [promt].[dim_ent_promt_schedule_active_v]
					a9 on a9.[dim_ent_schedule_nk]= [promt].[fact_promt_risk].[dim_ent_schedule_nk]
	left outer join [promt].[dim_ent_promt_risk_status_active_v]
					a10 on a10.[dim_ent_risk_status_nk] = [promt].[fact_promt_risk].[dim_ent_risk_status_nk]
	left outer join [promt].[dim_ent_promt_risk_closing_justification_active_v]
					a11 on a11.[dim_ent_risk_closing_justification_nk] = [promt].[fact_promt_risk].[dim_ent_risk_closing_justification_nk]
	left outer join [promt].[dim_ent_promt_strategy_pre_contract_active_v]
					a12 on a12.[dim_ent_strategy_pre_contract_nk] = [promt].[fact_promt_risk].[dim_ent_strategy_pre_contract_nk]
	left outer join [promt].[dim_ent_promt_strategy_execution_active_v]
					a13 on a13.[dim_ent_strategy_execution_nk] = [promt].[fact_promt_risk].[dim_ent_strategy_execution_nk]
	left outer join [promt].[dim_ent_promt_action_status_active_v]
					a14 on a14.[dim_ent_action_status_nk] = [promt].[fact_promt_risk].[dim_ent_action_status_nk]
	left outer join [promt].[dim_ent_promt_mit_probability_range_percentage_active_v]
					a15 on a15.[dim_ent_mit_probability_range_percentage_nk] = [promt].[fact_promt_risk].[dim_ent_mit_probability_range_percentage_nk]
	left outer join [promt].[dim_ent_promt_mit_environment_active_v]
					a16 on a16.[dim_ent_mit_environment_nk] = [promt].[fact_promt_risk].[dim_ent_mit_environment_nk]
	left outer join [promt].[dim_ent_promt_mit_health_safety_security_active_v]
					a17 on a17.[dim_ent_mit_health_safety_security_nk] = [promt].[fact_promt_risk].[dim_ent_mit_health_safety_security_nk]
	left outer join [promt].[dim_ent_promt_mit_quality_active_v]
					a18 on a18.[dim_ent_mit_quality_nk] = [promt].[fact_promt_risk].[dim_ent_mit_quality_nk]
	left outer join [promt].[dim_ent_promt_mit_reputation_active_v]
					a19 on a19.[dim_ent_mit_reputation_nk] = [promt].[fact_promt_risk].[dim_ent_mit_reputation_nk]
	left outer join [promt].[dim_ent_promt_mit_social_culture_active_v]
					a20 on a20.[dim_ent_mit_social_culture_nk] = [promt].[fact_promt_risk].[dim_ent_mit_social_culture_nk]
	left outer join [promt].[dim_ent_promt_mit_cost_impact_tcv_percentage_active_v]
					a21 on a21.[dim_ent_mit_cost_impact_tcv_percentage_nk] = [promt].[fact_promt_risk].[dim_ent_mit_cost_impact_tcv_percentage_nk]
	left outer join [promt].[dim_ent_promt_mit_schedule_active_v]
					a22 on a22.[dim_ent_mit_schedule_nk] = [promt].[fact_promt_risk].[dim_ent_mit_schedule_nk]
	left outer join [promt].[dim_ent_promt_distribution_type_active_v]
					a23 on a23.[dim_ent_distribution_type_nk] = [promt].[fact_promt_risk].[dim_ent_distribution_type_nk]
	left outer join [promt].[dim_ent_promt_shared_externaly_active_v]
					a24 on a24.[dim_ent_shared_externaly_nk] = [promt].[fact_promt_risk].[dim_ent_shared_externaly_nk]
	left outer join [promt].[dim_ent_promt_risk_modeling_tech_active_v]
					a25 on a25.[dim_ent_risk_modeling_tech_nk] = [promt].[fact_promt_risk].[dim_ent_risk_modeling_tech_nk]
	left outer join [promt].[dim_ent_promt_overall_impact_active_v]	
					a26 on a26.[dim_ent_overall_impact_nk] = [promt].[fact_promt_risk].[dim_ent_overall_impact_nk]
	left outer join [promt].[dim_ent_promt_mit_overall_impact_active_v]	
					a27 on a27.[dim_ent_mit_overall_impact_nk] = [promt].[fact_promt_risk].[dim_ent_mit_overall_impact_nk]
	left outer join [promt].[dim_ent_promt_project_active_v]
					a28 on a28.[dim_ent_promt_project_nk] = [promt].[fact_promt_risk].[dim_ent_promt_project_nk]
	left outer join [promt].[dim_ent_promt_mit_fully_transferred_active_v]
					a31 on a31.[dim_ent_mit_fully_transferred_nk] = [promt].[fact_promt_risk].[dim_ent_mit_fully_transferred_nk]
	left outer join [promt].[dim_ent_promt_mit_fully_avoided_active_v]
					a32 on a32.[dim_ent_mit_fully_avoided_nk] = [promt].[fact_promt_risk].[dim_ent_mit_fully_avoided_nk]

	where
		process_date = ( SELECT MAX(process_date) from [promt].[fact_promt_risk] a33 
						 where a33.risk_id = [promt].[fact_promt_risk].risk_id 
								and a33.risk_no = [promt].[fact_promt_risk].risk_no and 
								a33.t_project_id = [promt].[fact_promt_risk].t_project_id );
GO






DROP VIEW [promt].[risk information history]
GO

CREATE VIEW [promt].[risk information history] ([Risk ID], [Risk No], [Risk Ro Category Description], [Risk Sub Category], [Risk Title], [Risk Description], [Risk Record Date], [Risk Probability Range Percentage Description], [Risk Probability Range Percentage Description Display Order], [Risk Environment Description], [Risk Health Safety Security Description], [Risk Quality Description], [Risk Reputation Description], [Risk Social Culture Description], [Risk Cost Impact TCV Percentage Description], [Risk Schedule Description], [Risk Overall Impact Description], [Risk Overall Impact Description Display Order], [Risk Severity Score], [Risk Severity Score Description], [Risk Severity Score Description Display Order], [Hilp], [Risk Owner], [Risk Status Description], [Risk Closing Justification Description], [Risk Strategy Pre Contract Description], [Risk Strategy Execution Description], [Risk Actions], [Risk Actions status], [Risk Cost Mitigation], [Risk Actions Status ID], [Risk Action Due Date], [Mitigation Probability Range Percentage Description], [Mitigation Probability Range Percentage Description Disply Order], [Mitigation Environment Description], [Mitigation Health Safety Security Description], [Mitigation Quality Description], [Mitigation Reputation Description], [Mitigation Social Culture ID], [Mitigation Cost Impact TCV Percentage Description], [Mitigation Schedule Description], [Mitigation Overall Impact Description], [Mitigation Overall Impact Description Display Order], [Mitigation Severity Score], [Mitigation Severity Score Description], [Mitigation Severity Score Description Display Order], [Mitigation Hilp], [Risk Probability], [Risk Best Case], [Risk Most Likely], [Risk Worst Case], [Risk Discrete Value], [Risk Bottom Value], [Risk Top Value], [Risk Lower Probability], [Risk Min Value], [Risk Max Value], [Risk Distribution Type Description], [Risk Function 1], [Mitigation Risk Probability], [Mitigation Risk Best Case], [Mitigation Risk Most Likely], [Mitigation Risk Worst Case], [Mitigation Risk Discrete Value], [Mitigation Risk Bottom Value], [Mitigation Risk Top Value], [Mitigation Risk Lower Probability], [Mitigation Risk Min Value], [Mitigation Risk Max Value], [Risk Function 2], [Shared Externally Risk Description], [Driver Causes], [Risk Due Date], [Mitigation Risk Cost], [Risk Modeling Technology Description], [Project ID], [Active flag], [Created dtm], [Created by], [Modified dtm], [Modified by], [Risk Version Number], [Mitigation Fully Transferred], [Mitigation Fully Avoided], [Expected Value At Risk], [Expected Value At Risk Pre Contract], [Project], [Risk Due Date Flag], [Risk Action Due Date Flag], [Ranking Pre-Contract], [Ranking Execution], [Closed Dtm], [Archived], [Rearchival Date], [Cost Impact Ranging Basis], [Weighted Value at-Risk], [Event P80], [Total Funded Contingency])
AS SELECT distinct
[promt].[fact_promt_risk].risk_id
,[promt].[fact_promt_risk].risk_no
,NULLIF(a1.[Ro Category Description],'') as [Ro Category Description]
,NULLIF(a1.[Sub Category],'') as [Sub Category] 
,[promt].[fact_promt_risk].risk_title
,[promt].[fact_promt_risk].description
,[promt].[fact_promt_risk].record_date
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
	when a26.[Overall Impact] = 1 then '1. Very Low'
	when a26.[Overall Impact] = 2 then '2. Low'
	when a26.[Overall Impact] = 3 then '3. Medium'
	when a26.[Overall Impact] = 4 then '4. High'
	when a26.[Overall Impact] = 5 then '5. Very High'
	else null
  end as overall_impact_description
,NULLIF(a26.[Overall Impact Display Sort Order],'') as [Overall Impact Display Sort Order]
,[promt].[fact_promt_risk].severity_score
,case 
	when [promt].[fact_promt_risk].severity_score >= 1 AND [promt].[fact_promt_risk].severity_score <= 3  then '1. Low'
	when [promt].[fact_promt_risk].severity_score >= 4 AND [promt].[fact_promt_risk].severity_score <= 9 then '2. Medium'
	when [promt].[fact_promt_risk].severity_score >= 10 AND [promt].[fact_promt_risk].severity_score <= 15 then '3. High'
	when [promt].[fact_promt_risk].severity_score >= 16 AND [promt].[fact_promt_risk].severity_score <= 25 then '4. Extreme'
	else
	null
end
,case 
	when [promt].[fact_promt_risk].severity_score >= 1 AND [promt].[fact_promt_risk].severity_score <= 3  then 1
	when [promt].[fact_promt_risk].severity_score >= 4 AND [promt].[fact_promt_risk].severity_score <= 9 then 2
	when [promt].[fact_promt_risk].severity_score >= 10 AND [promt].[fact_promt_risk].severity_score <= 15 then 3
	when [promt].[fact_promt_risk].severity_score >= 16 AND [promt].[fact_promt_risk].severity_score <= 25 then 4
		else
	0
end risk_serverity_score_description_display_order
,[promt].[fact_promt_risk].hilp
,[promt].[fact_promt_risk].risk_owner
,NULLIF(a10.[risk status description],'') as [risk status description]
,NULLIF(a11.[closing justification description],'') as [closing justification description]
,NULLIF(a12.[strategy pre contract description],'') as [strategy pre contract description]
,NULLIF(a13.[strategy execution description],'') as [strategy execution description]
,[promt].[fact_promt_risk].actions
,NULLIF(a14.[action status description],'') as [action status description]
,[promt].[fact_promt_risk].cost_mitigation
,NULLIF(a14.[action status],'') as [action status]
,[promt].[fact_promt_risk].[action_due_date]
,NULLIF(a15.[mit probability range percentage description],'') as [mit probability range percentage description]
,NULLIF(a15.[mit probability range percentage display order],'') as [mit probability range percentage display order]
,NULLIF(a16.[mit environment description],'') as [mit environment description]
,NULLIF(a17.[mit health safety security description],'') as [mit health safety security description]
,NULLIF(a18.[mit quality description],'') as [mit quality description]
,NULLIf(a19.[Mit Reputation Description],'') as [Mit Reputation Description]
,NULLIF(a20.[mit social culture description],'') as [mit social culture description]
,NULLIF(a21.[mit cost impact tcv percentage description],'') as [mit cost impact tcv percentage description]
,NULLIF(a22.[Mit Schedule Description],'') as [Mit Schedule Description]
, case 
	when a27.[Mit Overall Impact] = 1 then '1. Very Low'
	when a27.[Mit Overall Impact] = 2 then '2. Low'
	when a27.[Mit Overall Impact] = 3 then '3. Medium'
	when a27.[Mit Overall Impact] = 4 then '4. High'
	when a27.[Mit Overall Impact] = 5 then '5. Very High'
	else null
  end as mit_overall_impact_description
,NULLIF(a27.[Mit Overall Impact Display Sort Order],'') as [Mit Overall Impact Display Sort Order]
,[promt].[fact_promt_risk].mit_severity_score
,case 
	when [promt].[fact_promt_risk].mit_severity_score >= 1 AND [promt].[fact_promt_risk].mit_severity_score <= 3  then '1. Low'
	when [promt].[fact_promt_risk].mit_severity_score >= 4 AND [promt].[fact_promt_risk].mit_severity_score <= 9 then '2. Medium'
	when [promt].[fact_promt_risk].mit_severity_score >= 10 AND [promt].[fact_promt_risk].mit_severity_score <= 15 then '3. High'
	when [promt].[fact_promt_risk].mit_severity_score >= 16 AND [promt].[fact_promt_risk].mit_severity_score <= 25 then '4. Extreme'
	else
	null
end
,case 
	when [promt].[fact_promt_risk].mit_severity_score >= 1 AND [promt].[fact_promt_risk].mit_severity_score <= 3  then 1
	when [promt].[fact_promt_risk].mit_severity_score >= 4 AND [promt].[fact_promt_risk].mit_severity_score <= 9 then 2
	when [promt].[fact_promt_risk].mit_severity_score >= 10 AND [promt].[fact_promt_risk].mit_severity_score <= 15 then 3
	when [promt].[fact_promt_risk].mit_severity_score >= 16 AND [promt].[fact_promt_risk].mit_severity_score <= 25 then 4
	else
	0
end
,[promt].[fact_promt_risk].mit_hilp
,[promt].[fact_promt_risk].probability
,[promt].[fact_promt_risk].best_case
,[promt].[fact_promt_risk].most_likely
,[promt].[fact_promt_risk].worst_case
,[promt].[fact_promt_risk].discrete_value
,[promt].[fact_promt_risk].bottom_value
,[promt].[fact_promt_risk].top_value
,[promt].[fact_promt_risk].lower_probability
,[promt].[fact_promt_risk].min_value
,[promt].[fact_promt_risk].max_value
,NULLIF(a23.[Distribution Type Description],'') as [Distribution Type Description]
,[promt].[fact_promt_risk].risk_function1
,[promt].[fact_promt_risk].mit_probability
,[promt].[fact_promt_risk].mit_best_case
,[promt].[fact_promt_risk].mit_most_likely
,[promt].[fact_promt_risk].mit_worst_case
,[promt].[fact_promt_risk].mit_discrete_value
,[promt].[fact_promt_risk].mit_bottom_value
,[promt].[fact_promt_risk].mit_top_value
,[promt].[fact_promt_risk].mit_lower_probability
,[promt].[fact_promt_risk].mit_min_value
,[promt].[fact_promt_risk].mit_max_value
,[promt].[fact_promt_risk].risk_function_2
,NULLIF(a24.[Shared Externaly Description],'') as [Shared Externaly Description]
,[promt].[fact_promt_risk].drivers_causes
,[promt].[fact_promt_risk].risk_due_date
,[promt].[fact_promt_risk].mit_cost
,NULLIF(a25.[risk modeling tech description],'') as [risk modeling tech description]
,[promt].[fact_promt_risk].[t_project_id]
,[promt].[fact_promt_risk].active_flag
,[promt].[fact_promt_risk].created_dtm
,[promt].[fact_promt_risk].created_by
,[promt].[fact_promt_risk].dl_touched_dtm
,[promt].[fact_promt_risk].created_by
,[promt].[fact_promt_risk].version_no
,NULLIF(a31.[Mit Fully Transferred],'') as [Mit Fully Transferred]
,NULLIF(a32.[Mit Fully Avoided],'') as [Mit Fully Avoided]
,[promt].[fact_promt_risk].expected_value_at_risk
,[promt].[fact_promt_risk].expected_value_at_risk_pre_contract
,a28.[Project Number] + ' - ' + a28.[Project Project Title] 
,case when Convert(Date,[promt].[fact_promt_risk].risk_due_date) < Convert(Date,GetDate()) then 0
	  when Convert(Date,[promt].[fact_promt_risk].risk_due_date) >= Convert(Date,GetDate()) then 1
	 end
,case when Convert(Date,[promt].[fact_promt_risk].action_due_date) < Convert(Date,GetDate()) then 0
	  when Convert(Date,[promt].[fact_promt_risk].action_due_date) >= Convert(Date,GetDate()) then 1
	 end
,ROW_NUMBER() OVER (ORDER BY [promt].[fact_promt_risk].severity_score desc,[promt].[fact_promt_risk].expected_value_at_risk_pre_contract desc)
,ROW_NUMBER() OVER (ORDER BY [promt].[fact_promt_risk].mit_severity_score desc,[promt].[fact_promt_risk].expected_value_at_risk desc)
,[promt].[fact_promt_risk].closed_dtm
,[promt].[fact_promt_risk].archived
,[promt].[fact_promt_risk].rearchival_date
,[promt].[fact_promt_risk].cost_impact_ranging_basis
,[promt].[fact_promt_risk].weighted_value_at_risk
,[promt].[fact_promt_risk].event_p80
,[promt].[fact_promt_risk].Total_Funded_Contingency

from [promt].[fact_promt_risk] 
	left outer join [promt].[dim_ent_promt_risk_opportunity_category_active_v] 
					a1 on a1.[dim_ent_risk_opportunity_category_nk] = [promt].[fact_promt_risk].[dim_ent_risk_opportunity_category_nk]
	left outer join [promt].[dim_ent_promt_probability_range_percentage_active_v] 
					a2 on a2.[dim_ent_probability_range_percentage_nk] = [promt].[fact_promt_risk].[dim_ent_probability_range_percentage_nk]
	left outer join [promt].[dim_ent_promt_environment_active_v]
					a3 on a3.[dim_ent_environment_nk] = [promt].[fact_promt_risk].[dim_ent_environment_nk]
	left outer join [promt].[dim_ent_promt_health_safety_security_active_v]
					a4 on a4.[dim_ent_health_safety_security_nk] = [promt].[fact_promt_risk].[dim_ent_health_safety_security_nk]
	left outer join [promt].[dim_ent_promt_quality_active_v]
					a5 on a5.[dim_ent_quality_nk] = [promt].[fact_promt_risk].[dim_ent_quality_nk]
	left outer join [promt].[dim_ent_promt_reputation_active_v]
					a6 on a6.[dim_ent_reputation_nk] = [promt].[fact_promt_risk].[dim_ent_reputation_nk]
	left outer join [promt].[dim_ent_promt_social_culture_active_v]
					a7 on a7.[dim_ent_social_culture_nk] = [promt].[fact_promt_risk].[dim_ent_social_culture_nk]
	left outer join [promt].[dim_ent_promt_cost_impact_tcv_percentage_active_v]
					a8 on a8.[dim_ent_cost_impact_tcv_percentage_nk] = [promt].[fact_promt_risk].[dim_ent_cost_impact_tcv_percentage_nk]
	left outer join [promt].[dim_ent_promt_schedule_active_v]
					a9 on a9.[dim_ent_schedule_nk]= [promt].[fact_promt_risk].[dim_ent_schedule_nk]
	left outer join [promt].[dim_ent_promt_risk_status_active_v]
					a10 on a10.[dim_ent_risk_status_nk] = [promt].[fact_promt_risk].[dim_ent_risk_status_nk]
	left outer join [promt].[dim_ent_promt_risk_closing_justification_active_v]
					a11 on a11.[dim_ent_risk_closing_justification_nk] = [promt].[fact_promt_risk].[dim_ent_risk_closing_justification_nk]
	left outer join [promt].[dim_ent_promt_strategy_pre_contract_active_v]
					a12 on a12.[dim_ent_strategy_pre_contract_nk] = [promt].[fact_promt_risk].[dim_ent_strategy_pre_contract_nk]
	left outer join [promt].[dim_ent_promt_strategy_execution_active_v]
					a13 on a13.[dim_ent_strategy_execution_nk] = [promt].[fact_promt_risk].[dim_ent_strategy_execution_nk]
	left outer join [promt].[dim_ent_promt_action_status_active_v]
					a14 on a14.[dim_ent_action_status_nk] = [promt].[fact_promt_risk].[dim_ent_action_status_nk]
	left outer join [promt].[dim_ent_promt_mit_probability_range_percentage_active_v]
					a15 on a15.[dim_ent_mit_probability_range_percentage_nk] = [promt].[fact_promt_risk].[dim_ent_mit_probability_range_percentage_nk]
	left outer join [promt].[dim_ent_promt_mit_environment_active_v]
					a16 on a16.[dim_ent_mit_environment_nk] = [promt].[fact_promt_risk].[dim_ent_mit_environment_nk]
	left outer join [promt].[dim_ent_promt_mit_health_safety_security_active_v]
					a17 on a17.[dim_ent_mit_health_safety_security_nk] = [promt].[fact_promt_risk].[dim_ent_mit_health_safety_security_nk]
	left outer join [promt].[dim_ent_promt_mit_quality_active_v]
					a18 on a18.[dim_ent_mit_quality_nk] = [promt].[fact_promt_risk].[dim_ent_mit_quality_nk]
	left outer join [promt].[dim_ent_promt_mit_reputation_active_v]
					a19 on a19.[dim_ent_mit_reputation_nk] = [promt].[fact_promt_risk].[dim_ent_mit_reputation_nk]
	left outer join [promt].[dim_ent_promt_mit_social_culture_active_v]
					a20 on a20.[dim_ent_mit_social_culture_nk] = [promt].[fact_promt_risk].[dim_ent_mit_social_culture_nk]
	left outer join [promt].[dim_ent_promt_mit_cost_impact_tcv_percentage_active_v]
					a21 on a21.[dim_ent_mit_cost_impact_tcv_percentage_nk] = [promt].[fact_promt_risk].[dim_ent_mit_cost_impact_tcv_percentage_nk]
	left outer join [promt].[dim_ent_promt_mit_schedule_active_v]
					a22 on a22.[dim_ent_mit_schedule_nk] = [promt].[fact_promt_risk].[dim_ent_mit_schedule_nk]
	left outer join [promt].[dim_ent_promt_distribution_type_active_v]
					a23 on a23.[dim_ent_distribution_type_nk] = [promt].[fact_promt_risk].[dim_ent_distribution_type_nk]
	left outer join [promt].[dim_ent_promt_shared_externaly_active_v]
					a24 on a24.[dim_ent_shared_externaly_nk] = [promt].[fact_promt_risk].[dim_ent_shared_externaly_nk]
	left outer join [promt].[dim_ent_promt_risk_modeling_tech_active_v]
					a25 on a25.[dim_ent_risk_modeling_tech_nk] = [promt].[fact_promt_risk].[dim_ent_risk_modeling_tech_nk]
	left outer join [promt].[dim_ent_promt_overall_impact_active_v]	
					a26 on a26.[dim_ent_overall_impact_nk] = [promt].[fact_promt_risk].[dim_ent_overall_impact_nk]
	left outer join [promt].[dim_ent_promt_mit_overall_impact_active_v]	
					a27 on a27.[dim_ent_mit_overall_impact_nk] = [promt].[fact_promt_risk].[dim_ent_mit_overall_impact_nk]
	left outer join [promt].[dim_ent_promt_project_active_v]
					a28 on a28.[dim_ent_promt_project_nk] = [promt].[fact_promt_risk].[dim_ent_promt_project_nk]
	left outer join [promt].[dim_ent_promt_mit_fully_transferred_active_v]
					a31 on a31.[dim_ent_mit_fully_transferred_nk] = [promt].[fact_promt_risk].[dim_ent_mit_fully_transferred_nk]
	left outer join [promt].[dim_ent_promt_mit_fully_avoided_active_v]
					a32 on a32.[dim_ent_mit_fully_avoided_nk] = [promt].[fact_promt_risk].[dim_ent_mit_fully_avoided_nk]
	where
		process_date = ( SELECT MAX(process_date) from [promt].[fact_promt_risk] a33 
						 where a33.risk_id = [promt].[fact_promt_risk].risk_id 
								and a33.risk_no = [promt].[fact_promt_risk].risk_no and 
								a33.t_project_id = [promt].[fact_promt_risk].t_project_id );
GO








DROP VIEW [promt].[risk information history snapshot]
GO

CREATE VIEW [promt].[risk information history snapshot] ([Risk ID], [Risk No], [Risk Ro Category Description], [Risk Sub Category], [Risk Title], [Risk Description], [Risk Record Date], [Risk Probability Range Percentage Description], [Risk Probability Range Percentage Description Display Order], [Risk Environment Description], [Risk Health Safety Security Description], [Risk Quality Description], [Risk Reputation Description], [Risk Social Culture Description], [Risk Cost Impact TCV Percentage Description], [Risk Schedule Description], [Risk Overall Impact Description], [Risk Overall Impact Description Display Order], [Risk Severity Score], [Risk Severity Score Description], [Risk Severity Score Description Display Order], [Hilp], [Risk Owner], [Risk Status Description], [Risk Closing Justification Description], [Risk Strategy Pre Contract Description], [Risk Strategy Execution Description], [Risk Actions], [Risk Actions status], [Risk Cost Mitigation], [Risk Actions Status ID], [Risk Action Due Date], [Mitigation Probability Range Percentage Description], [Mitigation Probability Range Percentage Description Disply Order], [Mitigation Environment Description], [Mitigation Health Safety Security Description], [Mitigation Quality Description], [Mitigation Reputation Description], [Mitigation Social Culture ID], [Mitigation Cost Impact TCV Percentage Description], [Mitigation Schedule Description], [Mitigation Overall Impact Description], [Mitigation Overall Impact Description Display Order], [Mitigation Severity Score], [Mitigation Severity Score Description], [Mitigation Severity Score Description Display Order], [Mitigation Hilp], [Risk Probability], [Risk Best Case], [Risk Most Likely], [Risk Worst Case], [Risk Discrete Value], [Risk Bottom Value], [Risk Top Value], [Risk Lower Probability], [Risk Min Value], [Risk Max Value], [Risk Distribution Type Description], [Risk Function 1], [Mitigation Risk Probability], [Mitigation Risk Best Case], [Mitigation Risk Most Likely], [Mitigation Risk Worst Case], [Mitigation Risk Discrete Value], [Mitigation Risk Bottom Value], [Mitigation Risk Top Value], [Mitigation Risk Lower Probability], [Mitigation Risk Min Value], [Mitigation Risk Max Value], [Risk Function 2], [Shared Externally Risk Description], [Driver Causes], [Risk Due Date], [Mitigation Risk Cost], [Risk Modeling Technology Description], [Project ID], [Active flag], [Created dtm], [Created by], [Modified dtm], [Modified by], [Risk Version Number], [Mitigation Fully Transferred], [Mitigation Fully Avoided], [Expected Value At Risk], [Expected Value At Risk Pre Contract], [Project], [Risk Due Date Flag], [Risk Action Due Date Flag], [Ranking Pre-Contract], [Ranking Execution], [Period Date], [Closed Dtm], [Archived], [Rearchival Date], [Cost Impact Ranging Basis], [Weighted Value at-Risk], [Event P80], [Total Funded Contingency])
AS SELECT distinct
a.risk_id
,a.risk_no
,NULLIF(a1.[Ro Category Description],'') as [Ro Category Description]
,NULLIF(a1.[Sub Category],'') as [Sub Category] 
,a.risk_title
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
	when a26.[Overall Impact] = 1 then '1. Very Low'
	when a26.[Overall Impact] = 2 then '2. Low'
	when a26.[Overall Impact] = 3 then '3. Medium'
	when a26.[Overall Impact] = 4 then '4. High'
	when a26.[Overall Impact] = 5 then '5. Very High'
	else null
  end as overall_impact_description
,NULLIF(a26.[Overall Impact Display Sort Order],'') as [Overall Impact Display Sort Order]
,a.severity_score
,case 
	when a.severity_score >= 1 AND a.severity_score <= 3  then '1. Low'
	when a.severity_score >= 4 AND a.severity_score <= 9 then '2. Medium'
	when a.severity_score >= 10 AND a.severity_score <= 15 then '3. High'
	when a.severity_score >= 16 AND a.severity_score <= 25 then '4. Extreme'
	else
	null
end
,case 
	when a.severity_score >= 1 AND a.severity_score <= 3  then 1
	when a.severity_score >= 4 AND a.severity_score <= 9 then 2
	when a.severity_score >= 10 AND a.severity_score <= 15 then 3
	when a.severity_score >= 16 AND a.severity_score <= 25 then 4
		else
	0
end risk_serverity_score_description_display_order
,a.hilp
,a.risk_owner
,NULLIF(a10.[risk status description],'') as [risk status description]
,NULLIF(a11.[closing justification description],'') as [closing justification description]
,NULLIF(a12.[strategy pre contract description],'') as [strategy pre contract description]
,NULLIF(a13.[strategy execution description],'') as [strategy execution description]
,a.actions
,NULLIF(a14.[action status description],'') as [action status description]
,a.cost_mitigation
,NULLIF(a14.[action status],'') as [action status]
,a.[action_due_date]
,NULLIF(a15.[mit probability range percentage description],'') as [mit probability range percentage description]
,NULLIF(a15.[mit probability range percentage display order],'') as [mit probability range percentage display order]
,NULLIF(a16.[mit environment description],'') as [mit environment description]
,NULLIF(a17.[mit health safety security description],'') as [mit health safety security description]
,NULLIF(a18.[mit quality description],'') as [mit quality description]
,NULLIF(a19.[Mit Reputation Description],'') as [Mit Reputation Description]
,NULLIF(a20.[mit social culture description],'') as [mit social culture description]
,NULLIF(a21.[mit cost impact tcv percentage description],'') as [mit cost impact tcv percentage description]
,NULLIF(a22.[Mit Schedule Description],'') as [Mit Schedule Description]
, case 
	when a27.[Mit Overall Impact] = 1 then '1. Very Low'
	when a27.[Mit Overall Impact] = 2 then '2. Low'
	when a27.[Mit Overall Impact] = 3 then '3. Medium'
	when a27.[Mit Overall Impact] = 4 then '4. High'
	when a27.[Mit Overall Impact] = 5 then '5. Very High'
	else null
  end as mit_overall_impact_description
,NULLIF(a27.[Mit Overall Impact Display Sort Order],'') as [Mit Overall Impact Display Sort Order]
,a.mit_severity_score
,case 
	when a.mit_severity_score >= 1 AND a.mit_severity_score <= 3  then '1. Low'
	when a.mit_severity_score >= 4 AND a.mit_severity_score <= 9 then '2. Medium'
	when a.mit_severity_score >= 10 AND a.mit_severity_score <= 15 then '3. High'
	when a.mit_severity_score >= 16 AND a.mit_severity_score <= 25 then '4. Extreme'
	else
	null
end
,case 
	when a.mit_severity_score >= 1 AND a.mit_severity_score <= 3  then 1
	when a.mit_severity_score >= 4 AND a.mit_severity_score <= 9 then 2
	when a.mit_severity_score >= 10 AND a.mit_severity_score <= 15 then 3
	when a.mit_severity_score >= 16 AND a.mit_severity_score <= 25 then 4
	else
	0
end
,a.mit_hilp
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
,NULLIF(a23.[Distribution Type Description],'') as [Distribution Type Description]
,a.risk_function1
,a.mit_probability
,a.mit_best_case
,a.mit_most_likely
,a.mit_worst_case
,a.mit_discrete_value
,a.mit_bottom_value
,a.mit_top_value
,a.mit_lower_probability
,a.mit_min_value
,a.mit_max_value
,a.risk_function_2
,NULLIF(a24.[Shared Externaly Description],'') as [Shared Externaly Description]
,a.drivers_causes
,a.risk_due_date
,a.mit_cost
,NULLIF(a25.[risk modeling tech description],'') as [risk modeling tech description]
,a.[t_project_id]
,a.active_flag
,a.created_dtm
,a.created_by
,a.dl_touched_dtm
,a.created_by
,a.version_no
,NULLIF(a31.[Mit Fully Transferred],'') as [Mit Fully Transferred]
,NULLIF(a32.[Mit Fully Avoided],'') as [Mit Fully Avoided]
,a.expected_value_at_risk
,a.expected_value_at_risk_pre_contract
,a28.[Project Number] + ' - ' + a28.[Project Project Title] 
,case when Convert(Date,a.risk_due_date) < Convert(Date,GetDate()) then 0
	  when Convert(Date,a.risk_due_date) >= Convert(Date,GetDate()) then 1
	 end
,case when Convert(Date,a.action_due_date) < Convert(Date,GetDate()) then 0
	  when Convert(Date,a.action_due_date) >= Convert(Date,GetDate()) then 1
	 end
,ROW_NUMBER() OVER (ORDER BY a.severity_score desc,a.expected_value_at_risk_pre_contract desc)
,ROW_NUMBER() OVER (ORDER BY a.mit_severity_score desc,a.expected_value_at_risk desc)
, Period_date as [Period Date]
,a.closed_dtm
,a.archived
,a.rearchival_date
,a.cost_impact_ranging_basis
,a.weighted_value_at_risk
,a.event_p80
,a.Total_Funded_Contingency

from [promt].[fact_promt_risk_snapshot] a
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
	left outer join [promt].[dim_ent_promt_risk_status_active_v]
					a10 on a10.[dim_ent_risk_status_nk] = a.[dim_ent_risk_status_nk]
	left outer join [promt].[dim_ent_promt_risk_closing_justification_active_v]
					a11 on a11.[dim_ent_risk_closing_justification_nk] = a.[dim_ent_risk_closing_justification_nk]
	left outer join [promt].[dim_ent_promt_strategy_pre_contract_active_v]
					a12 on a12.[dim_ent_strategy_pre_contract_nk] = a.[dim_ent_strategy_pre_contract_nk]
	left outer join [promt].[dim_ent_promt_strategy_execution_active_v]
					a13 on a13.[dim_ent_strategy_execution_nk] = a.[dim_ent_strategy_execution_nk]
	left outer join [promt].[dim_ent_promt_action_status_active_v]
					a14 on a14.[dim_ent_action_status_nk] = a.[dim_ent_action_status_nk]
	left outer join [promt].[dim_ent_promt_mit_probability_range_percentage_active_v]
					a15 on a15.[dim_ent_mit_probability_range_percentage_nk] = a.[dim_ent_mit_probability_range_percentage_nk]
	left outer join [promt].[dim_ent_promt_mit_environment_active_v]
					a16 on a16.[dim_ent_mit_environment_nk] = a.[dim_ent_mit_environment_nk]
	left outer join [promt].[dim_ent_promt_mit_health_safety_security_active_v]
					a17 on a17.[dim_ent_mit_health_safety_security_nk] = a.[dim_ent_mit_health_safety_security_nk]
	left outer join [promt].[dim_ent_promt_mit_quality_active_v]
					a18 on a18.[dim_ent_mit_quality_nk] = a.[dim_ent_mit_quality_nk]
	left outer join [promt].[dim_ent_promt_mit_reputation_active_v]
					a19 on a19.[dim_ent_mit_reputation_nk] = a.[dim_ent_mit_reputation_nk]
	left outer join [promt].[dim_ent_promt_mit_social_culture_active_v]
					a20 on a20.[dim_ent_mit_social_culture_nk] = a.[dim_ent_mit_social_culture_nk]
	left outer join [promt].[dim_ent_promt_mit_cost_impact_tcv_percentage_active_v]
					a21 on a21.[dim_ent_mit_cost_impact_tcv_percentage_nk] = a.[dim_ent_mit_cost_impact_tcv_percentage_nk]
	left outer join [promt].[dim_ent_promt_mit_schedule_active_v]
					a22 on a22.[dim_ent_mit_schedule_nk] = a.[dim_ent_mit_schedule_nk]
	left outer join [promt].[dim_ent_promt_distribution_type_active_v]
					a23 on a23.[dim_ent_distribution_type_nk] = a.[dim_ent_distribution_type_nk]
	left outer join [promt].[dim_ent_promt_shared_externaly_active_v]
					a24 on a24.[dim_ent_shared_externaly_nk] = a.[dim_ent_shared_externaly_nk]
	left outer join [promt].[dim_ent_promt_risk_modeling_tech_active_v]
					a25 on a25.[dim_ent_risk_modeling_tech_nk] = a.[dim_ent_risk_modeling_tech_nk]
	left outer join [promt].[dim_ent_promt_overall_impact_active_v]	
					a26 on a26.[dim_ent_overall_impact_nk] = a.[dim_ent_overall_impact_nk]
	left outer join [promt].[dim_ent_promt_mit_overall_impact_active_v]	
					a27 on a27.[dim_ent_mit_overall_impact_nk] = a.[dim_ent_mit_overall_impact_nk]
	left outer join [promt].[dim_ent_promt_project_snapshot_active_v]
					a28 on a28.[dim_ent_promt_project_nk] = a.[dim_ent_promt_project_nk]
	left outer join [promt].[dim_ent_promt_mit_fully_transferred_active_v]
					a31 on a31.[dim_ent_mit_fully_transferred_nk] = a.[dim_ent_mit_fully_transferred_nk]
	left outer join [promt].[dim_ent_promt_mit_fully_avoided_active_v]
					a32 on a32.[dim_ent_mit_fully_avoided_nk] = a.[dim_ent_mit_fully_avoided_nk]
	WHERE Process_date = (SELECT MAX(Process_date) FROM [promt].[fact_promt_risk_snapshot] a33
							WHERE   a33.period_date = a.period_date 
								and a33.t_project_id = a.t_project_id
								and a33.risk_id = a.risk_id 
								and a33.risk_no = a.risk_no );
GO









DROP VIEW [promt].[Opportunity information]
GO

CREATE VIEW [promt].[Opportunity information] ([Opportunity ID], [Opportunity Number], [Opportunity Ro Category Description], [Opportunity Sub Category], [Opportunity Title], [Opportunity Drivers Causes], [Opportunity Description], [Opportunity Record Date], [Opportunity Probability Range Percentage Description], [Opportunity Probability Range Percentage Display Order], [Opportunity Environment Description], [Opportunity Health Safety Security Description], [Opportunity Quality Description], [Opportunity Reputation Description], [Opportunity Social Culture Description], [Opportunity Cost Impact TCV Percentage Description], [Opportunity Schedule Description], [Opportunity Overall Impact Description], [Opportunity Overall Impact Description Display Order], [Opportunity Severity Score], [Opportunity Severity Score Description], [Opportunity Severity Score Display Order], [Hilp], [Opportunity Owner], [Opportunity Due Date], [Opportunity Status Description], [Opportunity Closing Justification Description], [Opportunity Actions], [Opportunity Cost], [Opportunity Response Status Description], [Opportunity Action Due Date], [Opportunity Probability], [Opportunity Best Case], [Opportunity Most Likely], [Opportunity Worst Case], [Opportunity Discrete Value], [Opportunity Bottom Value], [Opportunity Top Value], [Opportunity Lower Probability], [Opportunity Min Value], [Opportunity Max Value], [Opportunity Distribution Type Description], [Risk Function], [Project ID], [Project], [Active flag], [Created dtm], [Created by], [Modified dtm], [Modified by], [Risk Modeling Tech Description], [Opportunity Version Number], [Opportunity Due Date Flag], [Opportunity Action Due Date Flag], [Closed Dtm], [Archived], [Rearchival Date], [Event P80], [Total Funded Contingency])
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
	,a.Total_Funded_Contingency

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








DROP VIEW [promt].[Opportunity information History]
GO

CREATE VIEW [promt].[Opportunity information History] ([Opportunity ID], [Opportunity Number], [Opportunity Ro Category Description], [Opportunity Sub Category], [Opportunity Title], [Opportunity Drivers Causes], [Opportunity Description], [Opportunity Record Date], [Opportunity Probability Range Percentage Description], [Opportunity Probability Range Percentage Display Order], [Opportunity Environment Description], [Opportunity Health Safety Security Description], [Opportunity Quality Description], [Opportunity Reputation Description], [Opportunity Social Culture Description], [Opportunity Cost Impact TCV Percentage Description], [Opportunity Schedule Description], [Opportunity Overall Impact Description], [Opportunity Overall Impact Description Display Order], [Opportunity Severity Score], [Opportunity Severity Score Description], [Opportunity Severity Score Display Order], [Hilp], [Opportunity Owner], [Opportunity Due Date], [Opportunity Status Description], [Opportunity Closing Justification Description], [Opportunity Actions], [Opportunity Cost], [Opportunity Response Status Description], [Opportunity Action Due Date], [Opportunity Probability], [Opportunity Best Case], [Opportunity Most Likely], [Opportunity Worst Case], [Opportunity Discrete Value], [Opportunity Bottom Value], [Opportunity Top Value], [Opportunity Lower Probability], [Opportunity Min Value], [Opportunity Max Value], [Opportunity Distribution Type Description], [Risk Function], [Project ID], [Project], [Active flag], [Created dtm], [Created by], [Modified dtm], [Modified by], [Risk Modeling Tech Description], [Opportunity Version Number], [Opportunity Due Date Flag], [Opportunity Action Due Date Flag], [Closed Dtm], [Archived], [Rearchival Date], [Event P80], [Total Funded Contingency])
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
	,a.Total_Funded_Contingency
	 
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








DROP VIEW [promt].[Opportunity information History Snapshot]
GO

CREATE VIEW [promt].[Opportunity information History Snapshot] ([Opportunity ID], [Opportunity Number], [Opportunity Ro Category Description], [Opportunity Sub Category], [Opportunity Title], [Opportunity Drivers Causes], [Opportunity Description], [Opportunity Record Date], [Opportunity Probability Range Percentage Description], [Opportunity Probability Range Percentage Display Order], [Opportunity Environment Description], [Opportunity Health Safety Security Description], [Opportunity Quality Description], [Opportunity Reputation Description], [Opportunity Social Culture Description], [Opportunity Cost Impact TCV Percentage Description], [Opportunity Schedule Description], [Opportunity Overall Impact Description], [Opportunity Overall Impact Description Display Order], [Opportunity Severity Score], [Opportunity Severity Score Description], [Opportunity Severity Score Display Order], [Hilp], [Opportunity Owner], [Opportunity Due Date], [Opportunity Status Description], [Opportunity Closing Justification Description], [Opportunity Actions], [Opportunity Cost], [Opportunity Response Status Description], [Opportunity Action Due Date], [Opportunity Probability], [Opportunity Best Case], [Opportunity Most Likely], [Opportunity Worst Case], [Opportunity Discrete Value], [Opportunity Bottom Value], [Opportunity Top Value], [Opportunity Lower Probability], [Opportunity Min Value], [Opportunity Max Value], [Opportunity Distribution Type Description], [Risk Function], [Project ID], [Project], [Active flag], [Created dtm], [Created by], [Modified dtm], [Modified by], [Risk Modeling Tech Description], [Opportunity Version Number], [Opportunity Due Date Flag], [Opportunity Action Due Date Flag], [Period Date], [Closed Dtm], [Archived], [Rearchival Date], [Event P80], [Total Funded Contingency])
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
	,period_date AS [Period Date]
	,a.closed_dtm
	,a.archived
	,a.rearchival_date
	,a.event_p80
	,a.Total_Funded_Contingency
	 
  FROM [promt].[fact_promt_opportunity_snapshot] a
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
	left outer join [promt].[dim_ent_promt_project_snapshot_active_v]
				a16 on a16.[dim_ent_promt_project_nk] = a.[dim_ent_promt_project_nk]
				
	where
		process_date = ( SELECT MAX(process_date) from [promt].[fact_promt_opportunity_snapshot] a17
						 where 
								a17.period_date = a.period_date
							and	a17.t_project_id = a.t_project_id
							and a17.opportunity_id = a.opportunity_id 
							and a17.opportunity_no = a.opportunity_no );
GO





