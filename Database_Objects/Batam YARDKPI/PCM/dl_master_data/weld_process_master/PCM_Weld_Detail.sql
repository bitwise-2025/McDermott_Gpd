alter table yardkpi.stage_entp_pcm_Weld_details
ADD fitter_leader_man VARCHAR(200) null;	

alter table yardkpi.stage_entp_pcm_Weld_details
ADD leaderman_badgeid VARCHAR(200) null;

alter table yardkpi.stage_entp_pcm_Weld_details
ADD leaderman_name VARCHAR(200) null;

alter table dbo.dim_entp_pcm_Weld_details
ADD fitter_leader_man VARCHAR(200) null;	

alter table dbo.dim_entp_pcm_Weld_details
ADD leaderman_badgeid VARCHAR(200) null;

alter table dbo.dim_entp_pcm_Weld_details
ADD leaderman_name VARCHAR(200) null;

alter table yardkpi.reprocess_entp_pcm_Weld_details
ADD fitter_leader_man VARCHAR(200) null;	

alter table yardkpi.reprocess_entp_pcm_Weld_details
ADD leaderman_badgeid VARCHAR(200) null;

alter table yardkpi.reprocess_entp_pcm_Weld_details
ADD leaderman_name VARCHAR(200) null;

INSERT INTO [dbo].[generic_load_detail]
           ([load_name]
           ,[stage_column_name]
           ,[stage_column_data_type]
           ,[stage_column_data_type_category]
           ,[stage_column_key_type]
           ,[target_column_name]
           ,[ref_table_name]
           ,[ref_gnk_name]
           ,[ref_target_column_name1]
           ,[ref_source_column_name1]
           ,[ref_target_column_name2]
           ,[ref_source_column_name2]
           ,[ref_target_column_name3]
           ,[ref_source_column_name3]
           ,[ref_target_column_name4]
           ,[ref_source_column_name4]
           ,[ref_target_column_name5]
           ,[ref_source_column_name5]
           ,[sl_no]
           ,[active_flag])
     VALUES('Dim_entp_pcm_Weld_details_load','fitter_leader_man','varchar(200)','TEXT','OA','fitter_leader_man',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'650','Y');

	 

INSERT INTO [dbo].[generic_load_detail]
           ([load_name]
           ,[stage_column_name]
           ,[stage_column_data_type]
           ,[stage_column_data_type_category]
           ,[stage_column_key_type]
           ,[target_column_name]
           ,[ref_table_name]
           ,[ref_gnk_name]
           ,[ref_target_column_name1]
           ,[ref_source_column_name1]
           ,[ref_target_column_name2]
           ,[ref_source_column_name2]
           ,[ref_target_column_name3]
           ,[ref_source_column_name3]
           ,[ref_target_column_name4]
           ,[ref_source_column_name4]
           ,[ref_target_column_name5]
           ,[ref_source_column_name5]
           ,[sl_no]
           ,[active_flag])
     VALUES('Dim_entp_pcm_Weld_details_load','leaderman_badgeid','varchar(200)','TEXT','OA','leaderman_badgeid',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'660','Y');

	 
INSERT INTO [dbo].[generic_load_detail]
           ([load_name]
           ,[stage_column_name]
           ,[stage_column_data_type]
           ,[stage_column_data_type_category]
           ,[stage_column_key_type]
           ,[target_column_name]
           ,[ref_table_name]
           ,[ref_gnk_name]
           ,[ref_target_column_name1]
           ,[ref_source_column_name1]
           ,[ref_target_column_name2]
           ,[ref_source_column_name2]
           ,[ref_target_column_name3]
           ,[ref_source_column_name3]
           ,[ref_target_column_name4]
           ,[ref_source_column_name4]
           ,[ref_target_column_name5]
           ,[ref_source_column_name5]
           ,[sl_no]
           ,[active_flag])
     VALUES('Dim_entp_pcm_Weld_details_load','leaderman_name','varchar(200)','TEXT','OA','leaderman_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'670','Y');

drop view [dbo].[dim_entp_pcm_Weld_details_v];

CREATE VIEW [dbo].[dim_entp_pcm_Weld_details_v]
AS Select a.*,b.job,b.job_title,b.item,b.item_title,c.contract_number From dbo.dim_entp_pcm_Weld_details a left join dbo.dim_entp_pcm_job_item_vw b
on a.dim_entp_pcm_job_item_nk= b.dim_entp_pcm_job_item_nk
left join dbo.dim_ent_contract_active_v c on a.dim_ent_contract_nk=c.dim_ent_contract_nk
Where a.active=1 AND a.fab_code = 'BTY';
