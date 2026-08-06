declare @count int;
declare @next_val int;
DECLARE @Date DATETIME;
SET @Date = GETDATE();


select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 100053610 and milestone_gate_name = 'IFR'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name,data_lake_standard_milestone_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','c[¿ ®;ó2‹“/qñ]','1',@Date,NULL,'N',2,100053610,'IFR','IFR')
end
	
select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 25 and milestone_id = 100077407 and milestone_gate_name = 'AS-BUILT/FINAL APPL'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name,data_lake_standard_milestone_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000',',ÇSMLhuÇ—3MAdÌ','1',@Date,NULL,'N',25,100077407,'AS-BUILT/FINAL APPL','AS BUILT')
end
	
