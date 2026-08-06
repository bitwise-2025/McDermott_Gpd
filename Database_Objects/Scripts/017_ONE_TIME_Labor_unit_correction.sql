---step 1 - INSERT new sub_source for P6

declare @count int				
declare @next_val int				
select @count = count(*) from dim_ent_sub_source Where sub_source_name = 'P6'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_sub_source_nk),0) + 1 from dim_ent_sub_source
	insert into dim_ent_sub_source(dim_ent_sub_source_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,dim_ent_source_nk,source_name,sub_source_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','˜~ûT£‰¯íýëlƒÏ','1','2021-26-04 00:00:00.000',NULL,'N','2','SYSTEM','P6')
end

--step 2 - Update the parmaters for Labour units to use the new Source and SubSource

Update plp_parameter_value
set parameter_value = 'P6'
where pipeline_code='pl_Labor_Units_raw_to_synapse'
and parameter_code='sub_source'

Update plp_parameter_value
set parameter_value = 'SYSTEM'
where pipeline_code='pl_Labor_Units_raw_to_synapse'
and parameter_code='source'

-- step 3 - Cleanup FACT table of previously loaded P6 Labor units entries


--307875 records to be deleted
DELETE from DBO.FACT_OPS
--SELECT count(1) as FACT_Loaded from DBO.FACT_OPS
WHERE 
DIM_ENTP_PROJECT_NK = 142  --Project 99236910
AND DIM_ENTP_SUB_SOURCE_NK=1
and DIM_ENTP_DATA_SUB_CLASS_NK in (12,13,14)

