INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_risk_opportunity_category','dim_ent_promt_risk_opportunity_category','promt.stage_promt_risk_opportunity_category_v','promt.dim_ent_promt_risk_opportunity_category','promt.reprocess_dim_ent_promt_risk_opportunity_category','dim_ent_risk_opportunity_category_sk','dim_ent_risk_opportunity_category_nk','stage_promt_risk_opportunity_id','13','Y','DIMENSION')

--------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_probability_range_percent','dim_ent_promt_probability_range_percentage','promt.stage_promt_probability_range_percentage_v','promt.dim_ent_promt_probability_range_percentage','promt.reprocess_dim_ent_promt_probability_range_percentage','dim_ent_probability_range_percentage_sk','dim_ent_probability_range_percentage_nk','probability_range_percentage_id','13','Y','DIMENSION')

--------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_environment','dim_ent_promt_environment','promt.stage_promt_environment_v','promt.dim_ent_promt_environment','promt.reprocess_dim_ent_promt_environment','dim_ent_environment_sk','dim_ent_environment_nk','environment_id','13','Y','DIMENSION')


--------------------------------------------------------------------------------------------------------------------------------------------------------------



INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_health_safety_security','dim_ent_promt_health_safety_security','promt.stage_promt_health_safety_security_v','promt.dim_ent_promt_health_safety_security','promt.reprocess_dim_ent_promt_health_safety_security','dim_ent_health_safety_security_sk','dim_ent_health_safety_security_nk','health_safety_security_id','13','Y','DIMENSION')

--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_quality','dim_ent_promt_quality','promt.stage_promt_quality_v','promt.dim_ent_promt_quality','promt.reprocess_dim_ent_promt_quality','dim_ent_quality_sk','dim_ent_quality_nk','promt_quality_id','13','Y','DIMENSION')

--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_reputation','dim_ent_promt_reputation','promt.stage_promt_reputation_v','promt.dim_ent_promt_reputation','promt.reprocess_dim_ent_promt_reputation','dim_ent_reputation_sk','dim_ent_reputation_nk','promt_reputation_id','13','Y','DIMENSION')


--------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_social_culture','dim_ent_promt_social_culture','promt.stage_promt_social_culture_v','promt.dim_ent_promt_social_culture','promt.reprocess_dim_ent_promt_social_culture','dim_ent_social_culture_sk','dim_ent_social_culture_nk','social_culture_id','13','Y','DIMENSION')


--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_cost_impact_tcv_percentage','dim_ent_promt_cost_impact_tcv_percentage','promt.stage_promt_cost_impact_tcv_percentage_v','promt.dim_ent_promt_cost_impact_tcv_percentage','promt.reprocess_dim_ent_promt_cost_impact_tcv_percentage','dim_ent_cost_impact_tcv_percentage_sk','dim_ent_cost_impact_tcv_percentage_nk','cost_impact_tcv_percentage_id','13','Y','DIMENSION')


--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_schedule','dim_ent_promt_schedule','promt.stage_promt_schedule_v','promt.dim_ent_promt_schedule','promt.reprocess_dim_ent_promt_schedule','dim_ent_schedule_sk','dim_ent_schedule_nk','schedule_id','13','Y','DIMENSION')


--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_risk_status','dim_ent_promt_risk_status','promt.stage_promt_risk_status_v','promt.dim_ent_promt_risk_status','promt.reprocess_dim_ent_promt_risk_status','dim_ent_risk_status_sk','dim_ent_risk_status_nk','risk_status_id','13','Y','DIMENSION')


--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_opportunity_status','dim_ent_promt_opportunity_status','promt.stage_promt_opportunity_status_v','promt.dim_ent_promt_opportunity_status','promt.reprocess_dim_ent_promt_opportunity_status','dim_ent_opportunity_status_sk','dim_ent_opportunity_status_nk','opportunity_status_id','13','Y','DIMENSION')


--------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_risk_closing_justification','dim_ent_promt_risk_closing_justification','promt.stage_promt_risk_closing_justification_v','promt.dim_ent_promt_risk_closing_justification','promt.reprocess_dim_ent_promt_risk_closing_justification','dim_ent_risk_closing_justification_sk','dim_ent_risk_closing_justification_nk','closing_justification_id','13','Y','DIMENSION')


--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_opportunity_closing_just','dim_ent_promt_opportunity_closing_justification','promt.stage_promt_opportunity_closing_justification_v','promt.dim_ent_promt_opportunity_closing_justification','promt.reprocess_dim_ent_promt_opportunity_closing_justification','dim_ent_opportunity_closing_justification_sk','dim_ent_opportunity_closing_justification_nk','opportunity_closing_justification_id','13','Y','DIMENSION')



--------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_response_status','dim_ent_promt_response_status','promt.stage_promt_response_status_v','promt.dim_ent_promt_response_status','promt.reprocess_dim_ent_promt_response_status','dim_ent_response_status_sk','dim_ent_response_status_nk','response_status_id','13','Y','DIMENSION')


--------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_risk_modeling_tech','dim_ent_promt_risk_modeling_tech','promt.stage_promt_risk_modeling_tech_v','promt.dim_ent_promt_risk_modeling_tech','promt.reprocess_dim_ent_promt_risk_modeling_tech','dim_ent_risk_modeling_tech_sk','dim_ent_risk_modeling_tech_nk','risk_modeling_tech_id','13','Y','DIMENSION')


--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_strategy_pre_contract','dim_ent_promt_strategy_pre_contract','promt.stage_promt_strategy_pre_contract_v','promt.dim_ent_promt_strategy_pre_contract','promt.reprocess_dim_ent_promt_strategy_pre_contract','dim_ent_strategy_pre_contract_sk','dim_ent_strategy_pre_contract_nk','strategy_pre_contract_id','13','Y','DIMENSION')


--------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_strategy_execution','dim_ent_promt_strategy_execution','promt.stage_promt_strategy_execution_v','promt.dim_ent_promt_strategy_execution','promt.reprocess_dim_ent_promt_strategy_execution','dim_ent_strategy_execution_sk','dim_ent_strategy_execution_nk','strategy_execution_id','13','Y','DIMENSION')


--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_action_status','dim_ent_promt_action_status','promt.stage_promt_action_status_v','promt.dim_ent_promt_action_status','promt.reprocess_dim_ent_promt_action_status','dim_ent_action_status_sk','dim_ent_action_status_nk','action_status_id','13','Y','DIMENSION')

--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_mit_probability_range_perc','dim_ent_promt_mit_probability_range_percentage','promt.stage_promt_mit_probability_range_percentage_v','promt.dim_ent_promt_mit_probability_range_percentage','promt.reprocess_dim_ent_promt_mit_probability_range_percentage','dim_ent_mit_probability_range_percentage_sk','dim_ent_mit_probability_range_percentage_nk','mit_probability_range_percentage_id','13','Y','DIMENSION')

--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_mit_environment','dim_ent_promt_mit_environment','promt.stage_promt_mit_environment_v','promt.dim_ent_promt_mit_environment','promt.reprocess_dim_ent_promt_mit_environment','dim_ent_mit_environment_sk','dim_ent_mit_environment_nk','mit_environment_id','13','Y','DIMENSION')



--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_mit_health_safety_security','dim_ent_promt_mit_health_safety_security','promt.stage_promt_mit_health_safety_security_v','promt.dim_ent_promt_mit_health_safety_security','promt.reprocess_dim_ent_promt_mit_health_safety_security','dim_ent_mit_health_safety_security_sk','dim_ent_mit_health_safety_security_nk','mit_health_safety_security_id','13','Y','DIMENSION')


--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_mit_quality','dim_ent_promt_mit_quality','promt.stage_promt_mit_quality_v','promt.dim_ent_promt_mit_quality','promt.reprocess_dim_ent_promt_mit_quality','dim_ent_mit_quality_sk','dim_ent_mit_quality_nk','mit_quality_id','13','Y','DIMENSION')



--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_mit_reputation','dim_ent_promt_mit_reputation','promt.stage_promt_mit_reputation_v','promt.dim_ent_promt_mit_reputation','promt.reprocess_dim_ent_promt_mit_reputation','dim_ent_mit_reputation_sk','dim_ent_mit_reputation_nk','mit_reputation_id','13','Y','DIMENSION')

--------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_mit_social_culture','dim_ent_promt_mit_social_culture','promt.stage_promt_mit_social_culture_v','promt.dim_ent_promt_mit_social_culture','promt.reprocess_dim_ent_promt_mit_social_culture','dim_ent_mit_social_culture_sk','dim_ent_mit_social_culture_nk','mit_social_culture_id','13','Y','DIMENSION')



--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_mit_cost_impact_tcv_perc','dim_ent_promt_mit_cost_impact_tcv_percentage','promt.stage_promt_mit_cost_impact_tcv_percentage_v','promt.dim_ent_promt_mit_cost_impact_tcv_percentage','promt.reprocess_dim_ent_promt_mit_cost_impact_tcv_percentage','dim_ent_mit_cost_impact_tcv_percentage_sk','dim_ent_mit_cost_impact_tcv_percentage_nk','mit_cost_impact_tcv_percentage_id','13','Y','DIMENSION')



--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_mit_schedule','dim_ent_promt_mit_schedule','promt.stage_promt_mit_schedule_v','promt.dim_ent_promt_mit_schedule','promt.reprocess_dim_ent_promt_mit_schedule','dim_ent_mit_schedule_sk','dim_ent_mit_schedule_nk','mit_schedule_id','13','Y','DIMENSION')


--------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_distribution_type','dim_ent_promt_distribution_type','promt.stage_promt_distribution_type_v','promt.dim_ent_promt_distribution_type','promt.reprocess_dim_ent_promt_distribution_type','dim_ent_distribution_type_sk','dim_ent_distribution_type_nk','distribution_type_id','13','Y','DIMENSION')



--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_shared_externaly','dim_ent_promt_shared_externaly','promt.stage_promt_shared_externaly_v','promt.dim_ent_promt_shared_externaly','promt.reprocess_dim_ent_promt_shared_externaly','dim_ent_shared_externaly_sk','dim_ent_shared_externaly_nk','shared_externaly_id','13','Y','DIMENSION')


--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_mit_fully_transferred','dim_ent_promt_mit_fully_transferred','promt.stage_promt_mit_fully_transferred_v','promt.dim_ent_promt_mit_fully_transferred','promt.reprocess_dim_ent_promt_mit_fully_transferred','dim_ent_mit_fully_transferred_sk','dim_ent_mit_fully_transferred_nk','mit_fully_transferred_id','13','Y','DIMENSION')


--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_mit_fully_avoided','dim_ent_promt_mit_fully_avoided','promt.stage_promt_mit_fully_avoided_v','promt.dim_ent_promt_mit_fully_avoided','promt.reprocess_dim_ent_promt_mit_fully_avoided','dim_ent_mit_fully_avoided_sk','dim_ent_mit_fully_avoided_nk','mit_fully_avoided_id','13','Y','DIMENSION')


--------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_project','dim_ent_promt_project','promt.stage_promt_project_v','promt.dim_ent_promt_project','promt.reprocess_dim_ent_promt_project','dim_ent_promt_project_sk','dim_ent_promt_project_nk','promt_project_id','13','Y','DIMENSION')

--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_overall_impact','dim_ent_promt_overall_impact','promt.stage_promt_overall_impact_v','promt.dim_ent_promt_overall_impact','promt.reprocess_dim_ent_promt_overall_impact','dim_ent_overall_impact_sk','dim_ent_overall_impact_nk','overall_impact_id','13','Y','DIMENSION')

--------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_mit_overall_impact','dim_ent_promt_mit_overall_impact','promt.stage_promt_mit_overall_impact_v','promt.dim_ent_promt_mit_overall_impact','promt.reprocess_dim_ent_promt_mit_overall_impact','dim_ent_mit_overall_impact_sk','dim_ent_mit_overall_impact_nk','mit_overall_impact_id','13','Y','DIMENSION')

--------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_contingency','dim_ent_promt_contingency','promt.stage_promt_datalake_export_contingency','promt.dim_ent_promt_contingency','promt.reprocess_dim_ent_promt_contingency','dim_ent_promt_contingency_sk','dim_ent_promt_contingency_nk','stage_promt_datalake_export_contingency_id','13','Y','DIMENSION')

--------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_ent_promt_project_snapshot','dim_ent_promt_project_snapshot','promt.stage_promt_project_snapshot_v','promt.dim_ent_promt_project_snapshot','promt.reprocess_dim_ent_promt_project_snapshot','dim_ent_promt_project_sk','dim_ent_promt_project_nk','promt_snapshot_project_id','13','Y','DIMENSION')

