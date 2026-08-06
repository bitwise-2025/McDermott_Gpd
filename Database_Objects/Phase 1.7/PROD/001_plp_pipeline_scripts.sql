DECLARE @Date DATETIME;
SET @Date = GETDATE();

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_po_smat_master_pipeline','NCSA','SMAT PO Extract to load SRC-STG-RAW-Synapse',NULL,1,'abhijit.kharat@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_po_smat_source_to_stage','NCSA','SMAT PO Extract load to stage load',NULL,1,'abhijit.kharat@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_po_smat_stage_to_raw','NCSA','SMAT PO Extract stage to raw load',NULL,1,'abhijit.kharat@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_po_smat_raw_to_synapse_stage','NCSA','SMAT PO Extract raw to synapse load',NULL,1,'abhijit.kharat@mcdermott.com',@Date,47)


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_po_smat_raw_to_synapse_stage','SMAT','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_po_smat_raw_to_synapse_stage','SMAT','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_po_smat_source_to_stage','SMAT','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_po_smat_source_to_stage','SMAT','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_po_smat_source_to_stage','SMAT','file_system',3,'file_system','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_po_smat_source_to_stage','SMAT','folder_path',4,'folder_path','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_po_smat_source_to_stage','SMAT','file_name',5,'file_name','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_po_smat_source_to_stage','SMAT','p_proj_id',6,'p_proj_id','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_po_smat_stage_to_raw','SMAT','lastrundate',1,'lastrundate','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_po_smat_stage_to_raw','SMAT','file_system',2,'file_system','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_po_smat_stage_to_raw','SMAT','folder_path',3,'folder_path','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_po_smat_stage_to_raw','SMAT','file_name',4,'file_name','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date','2022-06-21 19:11:26',1,'abhijit.kharat@mcdermott.com',@Date,'pl_po_smat_raw_to_synapse_stage','SMAT')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currdate',1,'abhijit.kharat@mcdermott.com',@Date,'pl_po_smat_raw_to_synapse_stage','SMAT')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('p_proj_id','99236910'',''99239348'',''99191058E'',''D7068'',''D7264',1,'abhijit.kharat@mcdermott.com',@Date,'pl_po_smat_source_to_stage','SMAT')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'abhijit.kharat@mcdermott.com',@Date,'pl_po_smat_source_to_stage','SMAT')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currentdate',1,'abhijit.kharat@mcdermott.com',@Date,'pl_po_smat_source_to_stage','SMAT')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date','2022-06-21 19:04:30',1,'abhijit.kharat@mcdermott.com',@Date,'pl_po_smat_source_to_stage','SMAT')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/SMAT/PO',1,'abhijit.kharat@mcdermott.com',@Date,'pl_po_smat_source_to_stage','SMAT')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','SMAT_PO_EXTRACT',1,'abhijit.kharat@mcdermott.com',@Date,'pl_po_smat_source_to_stage','SMAT')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','SMAT_PO_EXTRACT',1,'abhijit.kharat@mcdermott.com',@Date,'pl_po_smat_stage_to_raw','SMAT')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'abhijit.kharat@mcdermott.com',@Date,'pl_po_smat_stage_to_raw','SMAT')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2022-06-21 19:10:34.716',1,'abhijit.kharat@mcdermott.com',@Date,'pl_po_smat_stage_to_raw','SMAT')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/SMAT/PO',1,'abhijit.kharat@mcdermott.com',@Date,'pl_po_smat_stage_to_raw','SMAT')

declare @count int;	

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code ='pl_po_smat_master_pipeline'and stage_table_name ='gpd.NCSA_SMAT_Suppliers_BothSources_v'and reprocessing_table_name ='gpd.reprocess_dim_ent_supplier_SMAT' 
  if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_po_smat_master_pipeline','gpd.NCSA_SMAT_Suppliers_BothSources_v','gpd.reprocess_dim_ent_supplier_SMAT','dbo.dim_ent_supplier')
 end
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code ='pl_po_smat_master_pipeline'and stage_table_name ='gpd.NCSA_SMAT_PO_EXTRACT_NEW'and reprocessing_table_name ='gpd.reprocess_dim_entp_requisition' 
  if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_po_smat_master_pipeline','gpd.NCSA_SMAT_PO_EXTRACT_NEW','gpd.reprocess_dim_entp_requisition','dbo.dim_entp_requisition')
 end
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code ='pl_po_smat_master_pipeline'and stage_table_name ='gpd.NCSA_SMAT_PO_EXTRACT_NEW'and reprocessing_table_name ='gpd.reprocess_dim_entp_item' 
  if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_po_smat_master_pipeline','gpd.NCSA_SMAT_PO_EXTRACT_NEW','gpd.reprocess_dim_entp_item','dbo.dim_entp_item')
 end
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code ='pl_po_smat_master_pipeline'and stage_table_name ='gpd.NCSA_SMAT_OsdDetail_v'and reprocessing_table_name ='gpd.reprocess_dim_entp_osd_detail' 
  if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_po_smat_master_pipeline','gpd.NCSA_SMAT_OsdDetail_v','gpd.reprocess_dim_entp_osd_detail','dbo.dim_entp_osd_detail')
 end
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code ='pl_po_smat_master_pipeline'and stage_table_name ='gpd.NCSA_SMAT_PO_EXTRACT_NEW'and reprocessing_table_name ='gpd.reprocess_dim_entp_po_detail' 
  if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_po_smat_master_pipeline','gpd.NCSA_SMAT_PO_EXTRACT_NEW','gpd.reprocess_dim_entp_po_detail','dbo.dim_entp_po_detail')
 end
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code ='pl_po_smat_master_pipeline'and stage_table_name ='gpd.NCSA_SMAT_FreightDetail_v'and reprocessing_table_name ='gpd.reprocess_dim_entp_freight_detail' 
  if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_po_smat_master_pipeline','gpd.NCSA_SMAT_FreightDetail_v','gpd.reprocess_dim_entp_freight_detail','dbo.dim_entp_freight_detail')
 end
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code ='pl_po_smat_master_pipeline'and stage_table_name ='gpd.NCSA_SMAT_ExpeditingLevel_v'and reprocessing_table_name ='gpd.reprocess_dim_entp_expediting_level' 
  if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_po_smat_master_pipeline','gpd.NCSA_SMAT_ExpeditingLevel_v','gpd.reprocess_dim_entp_expediting_level','dbo.dim_entp_expediting_level')
 end
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code ='pl_po_smat_master_pipeline'and stage_table_name ='gpd.NCSA_SMAT_InspectionLevel_v'and reprocessing_table_name ='gpd.reprocess_dim_entp_inspection_level' 
  if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_po_smat_master_pipeline','gpd.NCSA_SMAT_InspectionLevel_v','gpd.reprocess_dim_entp_inspection_level','dbo.dim_entp_inspection_level')
 end
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code ='pl_po_smat_master_pipeline'and stage_table_name ='gpd.NCSA_SMAT_MrrDetail_v'and reprocessing_table_name ='gpd.reprocess_dim_entp_mrr_detail' 
  if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_po_smat_master_pipeline','gpd.NCSA_SMAT_MrrDetail_v','gpd.reprocess_dim_entp_mrr_detail','dbo.dim_entp_mrr_detail')
 end
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code ='pl_po_smat_master_pipeline'and stage_table_name ='gpd.NCSA_SMAT_PO_v'and reprocessing_table_name ='gpd.reprocess_dim_entp_po' 
  if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_po_smat_master_pipeline','gpd.NCSA_SMAT_PO_v','gpd.reprocess_dim_entp_po','dbo.dim_entp_po')
 end
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code ='pl_po_smat_master_pipeline'and stage_table_name ='gpd.NCSA_SMAT_PO_EXTRACT_NEW'and reprocessing_table_name ='gpd.reprocess_dim_entp_po_header' 
  if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_po_smat_master_pipeline','gpd.NCSA_SMAT_PO_EXTRACT_NEW','gpd.reprocess_dim_entp_po_header','dbo.dim_entp_po_header')
 end

