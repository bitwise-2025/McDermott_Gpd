DROP PROC [promt].[sp_update_dimension_keys_for_promt_datalake_export_opportunity]
GO
CREATE PROC [promt].[sp_update_dimension_keys_for_promt_datalake_export_opportunity] AS

begin
begin try
	
declare @error_message varchar(1000)
declare @processed_count  int
declare @unprocessed_count  int


	declare @exceptionRaiser	int;
	declare @errorMessage		varchar(4000);



update [promt].[stage_promt_datalake_export_opportunity] set ro_category='' where ro_category IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set ro_category_description='' where ro_category_description IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set sub_category='' where sub_category IS NULL


execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_opportunity', 
       'promt.stage_promt_datalake_export_opportunity', 
       'stage_promt_datalake_export_opportunity_id', 
       'dim_ent_risk_opportunity_category_sk',
       'dim_ent_risk_opportunity_category_nk',
       'promt.dim_ent_promt_risk_opportunity_category',
       'dim_ent_risk_opportunity_category_sk',
       'dim_ent_risk_opportunity_category_nk',
       'ro_category', 
       'ro_category', 
       'ro_category_description',
       'ro_category_description',
	   'sub_category',
	   'sub_category',
       null,
       null,
       null,
       null,
       'FL',null;
	   
	   

update [promt].[stage_promt_datalake_export_opportunity] set probability_range_percentage='' where probability_range_percentage IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set probability_range_percentage_description='' where probability_range_percentage_description IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set probability_range_percentage_display_order='' where probability_range_percentage_display_order IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_opportunity', 
       'promt.stage_promt_datalake_export_opportunity', 
       'stage_promt_datalake_export_opportunity_id', 
       'dim_ent_probability_range_percentage_sk',
       'dim_ent_probability_range_percentage_nk',
       'promt.dim_ent_promt_probability_range_percentage',
       'dim_ent_probability_range_percentage_sk',
       'dim_ent_probability_range_percentage_nk',
       'probability_range_percentage', 
       'probability_range_percentage', 
       'probability_range_percentage_description',
       'probability_range_percentage_description',
	   'probability_range_percentage_display_order',
	   'probability_range_percentage_display_order',
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_opportunity] set environment='' where environment IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set environment_description='' where environment_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_opportunity', 
       'promt.stage_promt_datalake_export_opportunity', 
       'stage_promt_datalake_export_opportunity_id', 
       'dim_ent_environment_sk',
       'dim_ent_environment_nk',
       'promt.dim_ent_promt_environment',
       'dim_ent_environment_sk',
       'dim_ent_environment_nk',
       'environment', 
       'environment', 
       'environment_description',
       'environment_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 



update [promt].[stage_promt_datalake_export_opportunity] set health_safety_security='' where health_safety_security IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set health_safety_security_description='' where health_safety_security_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_opportunity', 
       'promt.stage_promt_datalake_export_opportunity', 
       'stage_promt_datalake_export_opportunity_id', 
       'dim_ent_health_safety_security_sk',
       'dim_ent_health_safety_security_nk',
       'promt.dim_ent_promt_health_safety_security',
       'dim_ent_health_safety_security_sk',
       'dim_ent_health_safety_security_nk',
       'health_safety_security', 
       'health_safety_security', 
       'health_safety_security_description',
       'health_safety_security_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 



update [promt].[stage_promt_datalake_export_opportunity] set quality='' where quality IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set quality_description='' where quality_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_opportunity', 
       'promt.stage_promt_datalake_export_opportunity', 
       'stage_promt_datalake_export_opportunity_id', 
       'dim_ent_quality_sk',
       'dim_ent_quality_nk',
       'promt.dim_ent_promt_quality',
       'dim_ent_quality_sk',
       'dim_ent_quality_nk',
       'quality', 
       'quality', 
       'quality_description',
       'quality_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_opportunity] set reputation='' where reputation IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set reputation_description='' where reputation_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_opportunity', 
       'promt.stage_promt_datalake_export_opportunity', 
       'stage_promt_datalake_export_opportunity_id', 
       'dim_ent_reputation_sk',
       'dim_ent_reputation_nk',
       'promt.dim_ent_promt_reputation',
       'dim_ent_reputation_sk',
       'dim_ent_reputation_nk',
       'reputation', 
       'reputation', 
       'reputation_description',
       'reputation_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_opportunity] set social_culture='' where social_culture IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set social_culture_description='' where social_culture_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_opportunity', 
       'promt.stage_promt_datalake_export_opportunity', 
       'stage_promt_datalake_export_opportunity_id', 
       'dim_ent_social_culture_sk',
       'dim_ent_social_culture_nk',
       'promt.dim_ent_promt_social_culture',
       'dim_ent_social_culture_sk',
       'dim_ent_social_culture_nk',
       'social_culture', 
       'social_culture', 
       'social_culture_description',
       'social_culture_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_opportunity] set cost_impact_tcv_percentage='' where cost_impact_tcv_percentage IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set cost_impact_tcv_percentage_description='' where cost_impact_tcv_percentage_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_opportunity', 
       'promt.stage_promt_datalake_export_opportunity', 
       'stage_promt_datalake_export_opportunity_id', 
       'dim_ent_cost_impact_tcv_percentage_sk',
       'dim_ent_cost_impact_tcv_percentage_nk',
       'promt.dim_ent_promt_cost_impact_tcv_percentage',
       'dim_ent_cost_impact_tcv_percentage_sk',
       'dim_ent_cost_impact_tcv_percentage_nk',
       'cost_impact_tcv_percentage', 
       'cost_impact_tcv_percentage', 
       'cost_impact_tcv_percentage_description',
       'cost_impact_tcv_percentage_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_opportunity] set schedule='' where schedule IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set schedule_description='' where schedule_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_opportunity', 
       'promt.stage_promt_datalake_export_opportunity', 
       'stage_promt_datalake_export_opportunity_id', 
       'dim_ent_schedule_sk',
       'dim_ent_schedule_nk',
       'promt.dim_ent_promt_schedule',
       'dim_ent_schedule_sk',
       'dim_ent_schedule_nk',
       'schedule', 
       'schedule', 
       'schedule_description',
       'schedule_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   


update [promt].[stage_promt_datalake_export_opportunity] set overall_impact='' where overall_impact IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set overall_impact_description='' where overall_impact_description IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set overall_impact_display_sort_order='' where overall_impact_display_sort_order IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_opportunity', 
       'promt.stage_promt_datalake_export_opportunity', 
       'stage_promt_datalake_export_opportunity_id', 
       'dim_ent_overall_impact_sk',
       'dim_ent_overall_impact_nk',
       'promt.dim_ent_promt_overall_impact',
       'dim_ent_overall_impact_sk',
       'dim_ent_overall_impact_nk',
       'overall_impact', 
       'overall_impact', 
       'overall_impact_description',
       'overall_impact_description',
	   'overall_impact_display_sort_order',
	   'overall_impact_display_sort_order',
       null,
       null,
       null,
       null,
       'FL',null;
		 
	 


update [promt].[stage_promt_datalake_export_opportunity] set opportunity_status='' where opportunity_status IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set opportunity_status_description='' where opportunity_status_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_opportunity', 
       'promt.stage_promt_datalake_export_opportunity', 
       'stage_promt_datalake_export_opportunity_id', 
       'dim_ent_opportunity_status_sk',
       'dim_ent_opportunity_status_nk',
       'promt.dim_ent_promt_opportunity_status',
       'dim_ent_opportunity_status_sk',
       'dim_ent_opportunity_status_nk',
       'opportunity_status', 
       'opportunity_status', 
       'opportunity_status_description',
       'opportunity_status_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_opportunity] set opportunity_closing_justification='' where opportunity_closing_justification IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set opportunity_closing_justification_description='' where opportunity_closing_justification_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_opportunity', 
       'promt.stage_promt_datalake_export_opportunity', 
       'stage_promt_datalake_export_opportunity_id', 
       'dim_ent_opportunity_closing_justification_sk',
       'dim_ent_opportunity_closing_justification_nk',
       'promt.dim_ent_promt_opportunity_closing_justification',
       'dim_ent_opportunity_closing_justification_sk',
       'dim_ent_opportunity_closing_justification_nk',
       'opportunity_closing_justification', 
       'opportunity_closing_justification', 
       'opportunity_closing_justification_description',
       'opportunity_closing_justification_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 



update [promt].[stage_promt_datalake_export_opportunity] set response_status='' where response_status IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set respose_status_description='' where respose_status_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_opportunity', 
       'promt.stage_promt_datalake_export_opportunity', 
       'stage_promt_datalake_export_opportunity_id', 
       'dim_ent_response_status_sk',
       'dim_ent_response_status_nk',
       'promt.dim_ent_promt_response_status',
       'dim_ent_response_status_sk',
       'dim_ent_response_status_nk',
       'response_status', 
       'response_status', 
       'respose_status_description',
       'respose_status_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   


update [promt].[stage_promt_datalake_export_opportunity] set distribution_type='' where distribution_type IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set distribution_type_description='' where distribution_type_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_opportunity', 
       'promt.stage_promt_datalake_export_opportunity', 
       'stage_promt_datalake_export_opportunity_id', 
       'dim_ent_distribution_type_sk',
       'dim_ent_distribution_type_nk',
       'promt.dim_ent_promt_distribution_type',
       'dim_ent_distribution_type_sk',
       'dim_ent_distribution_type_nk',
       'distribution_type', 
       'distribution_type', 
       'distribution_type_description',
       'distribution_type_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   	 



update [promt].[stage_promt_datalake_export_opportunity] set risk_modeling_tech='' where risk_modeling_tech IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set risk_modeling_tech_description='' where risk_modeling_tech_description IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_opportunity', 
       'promt.stage_promt_datalake_export_opportunity', 
       'stage_promt_datalake_export_opportunity_id', 
       'dim_ent_risk_modeling_tech_sk',
       'dim_ent_risk_modeling_tech_nk',
       'promt.dim_ent_promt_risk_modeling_tech',
       'dim_ent_risk_modeling_tech_sk',
       'dim_ent_risk_modeling_tech_nk',
       'risk_modeling_tech', 
       'risk_modeling_tech', 
       'risk_modeling_tech_description',
       'risk_modeling_tech_description',
	   null,
	   null,
       null,
       null,
       null,
       null,
       'FL',null;
	   
	 


update [promt].[stage_promt_datalake_export_opportunity] set t_project_id='' where t_project_id IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set project_no='' where project_no IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set project_pc_code='' where project_pc_code IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set project_project_title='' where project_project_title IS NULL
update [promt].[stage_promt_datalake_export_opportunity] set project_client_name='' where project_client_name IS NULL

execute [stage].[fact_lookup_based_on_many_key]
       'promt.stage_promt_datalake_export_opportunity', 
       'promt.stage_promt_datalake_export_opportunity', 
       'stage_promt_datalake_export_opportunity_id', 
       'dim_ent_promt_project_sk',
       'dim_ent_promt_project_nk',
       'promt.dim_ent_promt_project',
       'dim_ent_promt_project_sk',
       'dim_ent_promt_project_nk',
       't_project_id',
	't_project_id',
       'project_no', 
       'project_no', 
       'project_pc_code',
       'project_pc_code',
	'project_project_title',
	'project_project_title',
       'project_client_name',
       'project_client_name',
       'FL',null;
	   
	 



	if isnull(@processed_count,0) > 0 
	begin
		select @error_message = 'Total records processed is ' + convert(varchar(40),@processed_count)
	end
	select @error_message = isnull(@error_message,'')
	if isnull(@processed_count,0) > 0 
	begin
		select @error_message = @error_message + 'Total records failed validation ' + convert(varchar(40),@unprocessed_count)
	end

	if isnull(@error_message,'') = '' 
	begin
	  select 'Success'; 
	end
	else
	begin
      select @error_message ;
	end

end try
begin catch
	if @errorMessage is not null
	begin
		select 'Failed', @errorMessage;
	end
	else
	begin
		--select 'Falied', error_message()

		DECLARE @sp_failureMessage nvarchar(4000), @sp_failureSeverity int, @sp_failureStatus int;

		SET @sp_failureSeverity=ERROR_SEVERITY();
		SET @sp_failureStatus=ERROR_STATE();
	
		SET @sp_failureMessage =  
		  'Error_No: ' + CAST(ERROR_NUMBER() AS VARCHAR) + ' ||'+
		  'Error_Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR) + ' ||' +
		  'Error State: ' + CAST(ERROR_STATE() AS VARCHAR) + ' ||' +
		  'SPName: ' + ERROR_PROCEDURE() + ' ||' +
		  'Error_Message: ' + ERROR_MESSAGE() + ' ||' ;

		SELECT @sp_failureMessage as failureMessage
		RAISERROR (@sp_failureMessage, @sp_failureSeverity, @sp_failureStatus);
		

	end;
end catch;
end;		
GO


