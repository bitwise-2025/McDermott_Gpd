
ALTER TABLE [yardkpi].[stage_entp_mwin_rfi_milestone]
ADD 
	[rbt_no_formtd]                  NVARCHAR(100) NULL,
    [root_cause]                     NVARCHAR(500) NULL,
    [Inspection_Level_Client]        NVARCHAR(250) NULL,
    [Inspection_Level_Contractor]    NVARCHAR(250) NULL,
    [ProductionPersonal_title]       NVARCHAR(300) NULL,
    [ProductionPersonal_name]        NVARCHAR(500) NULL,
    [ProductionPersonal_Remarks]     NVARCHAR(4000) NULL,
    [ProductionPersonal_appr_status] NVARCHAR(100) NULL,
    [ProductionPersonal_approval_dt] DATETIME      NULL,
    [Foremen]                        NVARCHAR(250) NULL;

ALTER TABLE yardkpi.reprocess_entp_mwin_rfi_milestone
ADD 
	[rbt_no_formtd]                  NVARCHAR(100) NULL,
    [root_cause]                     NVARCHAR(500) NULL,
    [Inspection_Level_Client]        NVARCHAR(250) NULL,
    [Inspection_Level_Contractor]    NVARCHAR(250) NULL,
    [ProductionPersonal_title]       NVARCHAR(300) NULL,
    [ProductionPersonal_name]        NVARCHAR(500) NULL,
    [ProductionPersonal_Remarks]     NVARCHAR(4000) NULL,
    [ProductionPersonal_appr_status] NVARCHAR(100) NULL,
    [ProductionPersonal_approval_dt] DATETIME      NULL,
    [Foremen]                        NVARCHAR(250) NULL;

ALTER TABLE dbo.dim_entp_mwin_rfi_milestone
ADD 
	[rbt_no_formtd]                  NVARCHAR(100) NULL,
    [root_cause]                     NVARCHAR(500) NULL,
    [Inspection_Level_Client]        NVARCHAR(250) NULL,
    [Inspection_Level_Contractor]    NVARCHAR(250) NULL,
    [ProductionPersonal_title]       NVARCHAR(300) NULL,
    [ProductionPersonal_name]        NVARCHAR(500) NULL,
    [ProductionPersonal_Remarks]     NVARCHAR(4000) NULL,
    [ProductionPersonal_appr_status] NVARCHAR(100) NULL,
    [ProductionPersonal_approval_dt] DATETIME      NULL,
    [Foremen]                        NVARCHAR(250) NULL;


insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'rbt_no_formtd', 'varchar(100)', 'TEXT', 'OA', 'rbt_no_formtd', null, null, null, null, null, null, 49, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'root_cause', 'varchar(500)', 'TEXT', 'OA', 'root_cause', null, null, null, null, null, null, 50, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'Inspection_Level_Client', 'varchar(250)', 'TEXT', 'OA', 'Inspection_Level_Client', null, null, null, null, null, null, 51, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'Inspection_Level_Contractor', 'varchar(250)', 'TEXT', 'OA', 'Inspection_Level_Contractor', null, null, null, null, null, null, 52, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'ProductionPersonal_title', 'varchar(300)', 'TEXT', 'OA', 'ProductionPersonal_title', null, null, null, null, null, null, 53, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'ProductionPersonal_name', 'varchar(500)', 'TEXT', 'OA', 'ProductionPersonal_name', null, null, null, null, null, null, 54, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'ProductionPersonal_Remarks', 'varchar(4000)', 'TEXT', 'OA', 'ProductionPersonal_Remarks', null, null, null, null, null, null, 55, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'ProductionPersonal_appr_status', 'varchar(100)', 'TEXT', 'OA', 'ProductionPersonal_appr_status', null, null, null, null, null, null, 56, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'ProductionPersonal_approval_dt', 'datetime', 'datetime', 'OA', 'ProductionPersonal_approval_dt', null, null, null, null, null, null, 57, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_mwin_rfi_milestone', 'Foremen', 'varchar(250)', 'TEXT', 'OA', 'Foremen', null, null, null, null, null, null, 58, 'Y');


