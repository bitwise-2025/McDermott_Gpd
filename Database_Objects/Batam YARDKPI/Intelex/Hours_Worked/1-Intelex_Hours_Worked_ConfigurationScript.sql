--------------------------------------------------
--dim_entp_yardkpi_intelex_hours_worked--
---------------------------------------------------

insert into generic_load_header 
(load_name, description, stage_table_name,
target_table_name, reprocess_table_name, target_sk_name, 
target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_entp_yardkpi_intelex_hours_worked', 'dim_entp_yardkpi_intelex_hours_worked', 'yardkpi.stage_intelex_hours_worked', 
'dbo.dim_entp_yardkpi_intelex_hours_worked', 'yardkpi.reprocess_intelex_hours_worked', 'dim_entp_yardkpi_intelex_hours_worked_sk', 
'dim_entp_yardkpi_intelex_hours_worked_nk', 'stage_intelex_hours_worked_id', 13, 'Y', 'DIMENSION');

-----------------------------------------------------
--NK----

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'row_id', 'bigint','NUMBER', 'NK', 'row_id',null, null, null, null, null, null, 1, 'Y');

--TA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 3, 'Y');

--OA---

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Id', 'varchar(100)', 'TEXT', 'OA', 'Id', null, null, null, null, null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Display_Field', 'varchar(500)', 'TEXT', 'OA', 'Display_Field', null, null, null, null, null, null, 5, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Location_Code', 'varchar(40)', 'TEXT', 'OA', 'Location_Code', null, null, null, null, null, null, 6, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Location', 'varchar(100)', 'TEXT', 'OA', 'Location', null, null, null, null, null, null, 7, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Profile_No', 'varchar(40)', 'TEXT', 'OA', 'Profile_No', null, null, null, null, null, null, 8, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Vessel', 'varchar(200)', 'TEXT', 'OA', 'Vessel', null, null, null, null, null, null, 9, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Other_Vessel', 'varchar(200)', 'TEXT', 'OA', 'Other_Vessel', null, null, null, null, null, null, 10, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Profile', 'varchar(1000)', 'TEXT', 'OA', 'Profile', null, null, null, null, null, null, 11, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Profile_Area', 'varchar(100)', 'TEXT', 'OA', 'Profile_Area', null, null, null, null, null, null, 12, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Profile_Type', 'varchar(100)', 'TEXT', 'OA', 'Profile_Type', null, null, null, null, null, null, 13, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Business_Line', 'varchar(500)', 'TEXT', 'OA', 'Business_Line', null, null, null, null, null, null, 14, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Project_Number', 'varchar(100)', 'TEXT', 'OA', 'Project_Number', null, null, null, null, null, null, 15, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Project_Name', 'varchar(500)', 'TEXT', 'OA', 'Project_Name', null, null, null, null, null, null, 16, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Month_Date', 'datetime', 'DATETIME', 'OA', 'Month_Date', null, null, null, null, null, null, 17, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Month', 'varchar(500)', 'TEXT', 'OA', 'Month', null, null, null, null, null, null, 18, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Year', 'int', 'NUMBER', 'OA', 'Year', null, null, null, null, null, null, 19, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Employee_Hours', 'int', 'NUMBER', 'OA', 'Employee_Hours', null, null, null, null, null, null, 20, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Subcontractor_Hours', 'int', 'NUMBER', 'OA', 'Subcontractor_Hours', null, null, null, null, null, null, 21, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Joint_Venture_Partner_Hours', 'int', 'NUMBER', 'OA', 'Joint_Venture_Partner_Hours', null, null, null, null, null, null, 22, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Subcontractor_Vessel_Hours', 'int', 'NUMBER', 'OA', 'Subcontractor_Vessel_Hours', null, null, null, null, null, null, 23, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Vessel_Hours_Helper', 'int', 'NUMBER', 'OA', 'Vessel_Hours_Helper', null, null, null, null, null, null, 24, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'Sub_Profile_Type', 'varchar(100)', 'TEXT', 'OA', 'Sub_Profile_Type', null, null, null, null, null, null, 25, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 26, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_yardkpi_intelex_hours_worked', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 27, 'Y');
