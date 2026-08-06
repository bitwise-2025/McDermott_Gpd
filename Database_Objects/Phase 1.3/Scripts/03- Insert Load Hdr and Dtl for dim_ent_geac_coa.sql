--Insert entry into generic_load_header
insert into [dbo].[generic_load_header] values
('dim_ent_geac_coa_mcpm_offshore','MCPM Offshore entries for GEAC COA','gpd.dim_ent_geac_coa_MCPM_Off','dim_ent_geac_coa','gpd.reprocess_dim_ent_geac_coa_MCPM_Off','dim_ent_geac_coa_sk','dim_ent_geac_coa_nk','stage_geac_coa_key','13','Y','DIMENSION',NULL)


--Insert entries into generic_load_details
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','coa_value','varchar(5000)','TEXT','NK','coa_value','1','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','entity_id','varchar(50)','TEXT','OA','entity_id','2','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','account_code','varchar(50)','TEXT','OA','account_code','3','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','ident1_code','varchar(50)','TEXT','OA','ident1_code','4','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','ident2_code','varchar(50)','TEXT','OA','ident2_code','5','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','ident3_code','varchar(50)','TEXT','OA','ident3_code','6','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','coa_type','varchar(50)','TEXT','OA','coa_type','7','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','ident1_description','varchar(250)','TEXT','OA','ident1_description','8','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','ident2_description','varchar(250)','TEXT','OA','ident2_description','9','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','ident3_description','varchar(250)','TEXT','OA','ident3_description','10','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','classification_id','varchar(50)','TEXT','OA','classification_id','11','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','coa_status','varchar(20)','DATE','OA','coa_status','12','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','contract_id','varchar(50)','DATE','OA','contract_id','13','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','entity_description','varchar(240)','TEXT','OA','entity_description','14','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','account_description','varchar(240)','TEXT','OA','account_description','15','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','contract_description','varchar(240)','TEXT','OA','contract_description','16','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','ident1_status','varchar(50)','TEXT','OA','ident1_status','17','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','ident1_start_date','datetime','DATE','OA','ident1_start_date','18','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','ident1_end_date','datetime','DATE','OA','ident1_end_date','19','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','ident2_status','varchar(50)','TEXT','OA','ident2_status','20','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','ident2_start_date','datetime','DATE','OA','ident2_start_date','21','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','ident2_end_date','datetime','DATE','OA','ident2_end_date','22','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','sub_source_name','varchar(250)','TEXT','OA','sub_source_name','23','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','source_name','varchar(250)','TEXT','OA','source_name','24','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','PSRLevel1','varchar(5)','TEXT','OA','PSRLevel1','25','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','PSRLevel2','varchar(5)','TEXT','OA','PSRLevel2','26','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','PSRL1Description','varchar(100)','TEXT','OA','PSRL1Description','27','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','PSRL2Description','varchar(100)','TEXT','OA','PSRL2Description','28','Y');
insert into [dbo].[generic_load_detail]
(load_name,stage_column_name,stage_column_data_type,stage_column_data_type_category,stage_column_key_type,target_column_name,sl_no,active_flag)
values
('dim_ent_geac_coa_mcpm_offshore','measurable','varchar(5)','TEXT','OA','measurable','29','Y');
