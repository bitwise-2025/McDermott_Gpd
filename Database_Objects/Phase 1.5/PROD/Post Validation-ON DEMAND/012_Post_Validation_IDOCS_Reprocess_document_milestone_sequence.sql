declare @count int
declare @next_val int
DECLARE @Date DATETIME;
SET @Date = GETDATE();

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 4 and milestone_id = 100068228 and milestone_gate_name = 'ISSUED FOR USE/CONSTRUCTION'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.004','2050-12-31 00:00:00.004','5táMÜËšô”&x]™=','1',@Date,NULL,'N',4,100068228,'ISSUED FOR USE/CONSTRUCTION')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 7 and milestone_id = 19549 and milestone_gate_name = 'AFC W'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.005','2050-12-31 00:00:00.005','5táMÜËšô”&x]™=','1',@Date,NULL,'N',7,19549,'AFC W')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 6 and milestone_id = 100068347 and milestone_gate_name = 'ISSUED AS BUILT'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.006','2050-12-31 00:00:00.006','5táMÜËšô”&x]™=','1',@Date,NULL,'N',6,100068347,'ISSUED AS BUILT')
end

select @count = count(*) from dim_ent_document_milestone_sequence Where milestone_order = 2 and milestone_id = 100059367 and milestone_gate_name = 'INTER DISCIPLINE CHECK'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_document_milestone_sequence_nk),0) + 1 from dim_ent_document_milestone_sequence
	insert into dim_ent_document_milestone_sequence(dim_ent_document_milestone_sequence_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,milestone_order,milestone_id,milestone_gate_name)
	 values (@next_val,'2000-01-01 00:00:00.007','2050-12-31 00:00:00.007','5táMÜËšô”&x]™=','1',@Date,NULL,'N',2,100059367,'INTER DISCIPLINE CHECK')
end

---Updating missing values--
UPDATE dim_ent_document_milestone_sequence
set data_lake_standard_milestone_name='TBD'
where data_lake_standard_milestone_name is NULL

