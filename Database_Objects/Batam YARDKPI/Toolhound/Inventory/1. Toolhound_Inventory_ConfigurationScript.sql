--Begin tran
--------------------------------------------------
--dim_entp_toolhound_category--
---------------------------------------------------

delete from generic_load_header where load_name = 'dim_entp_toolhound_category'
delete from generic_load_detail where load_name = 'dim_entp_toolhound_category' 

insert into generic_load_header 
(load_name, description, stage_table_name,
target_table_name, reprocess_table_name, target_sk_name, 
target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_entp_toolhound_category', 'dim_entp_toolhound_category', 'yardkpi.stage_toolhound_category_v', 
'dbo.dim_entp_toolhound_category', 'yardkpi.reprocess_toolhound_category', 'dim_entp_toolhound_category_sk ', 
'dim_entp_toolhound_category_nk', 'stage_toolhound_category_id', 13, 'Y', 'DIMENSION');

--NK--
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_category', 'category', 'varchar(500)','TEXT', 'NK', 'category',null, null, null, null, null, null, 1, 'Y');

--TA--
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_category', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_category', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 3, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_category', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_category', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 5, 'Y');
------------------------------------------

--------------------------------------------------
--dim_entp_toolhound_subcategory--
---------------------------------------------------

delete from generic_load_header where load_name = 'dim_entp_toolhound_subcategory'
delete from generic_load_detail where load_name = 'dim_entp_toolhound_subcategory' 

insert into generic_load_header 
(load_name, description, stage_table_name,
target_table_name, reprocess_table_name, target_sk_name, 
target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_entp_toolhound_subcategory', 'dim_entp_toolhound_subcategory', 'yardkpi.stage_toolhound_subcategory_v', 
'dbo.dim_entp_toolhound_subcategory', 'yardkpi.reprocess_toolhound_subcategory', 'dim_entp_toolhound_subcategory_sk ', 
'dim_entp_toolhound_subcategory_nk', 'stage_toolhound_subcategory_id', 13, 'Y', 'DIMENSION');

--NK--
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_subcategory', 'subcategory', 'varchar(500)','TEXT', 'NK', 'subcategory',null, null, null, null, null, null, 1, 'Y');

--TA--
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_subcategory', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_subcategory', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 3, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_subcategory', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_subcategory', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 5, 'Y');
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------
--dim_entp_toolhound_location--
---------------------------------------------------

delete from generic_load_header where load_name = 'dim_entp_toolhound_location'
delete from generic_load_detail where load_name = 'dim_entp_toolhound_location' 

insert into generic_load_header 
(load_name, description, stage_table_name,
target_table_name, reprocess_table_name, target_sk_name, 
target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_entp_toolhound_location', 'dim_entp_toolhound_location', 'yardkpi.stage_toolhound_location_v', 
'dbo.dim_entp_toolhound_location', 'yardkpi.reprocess_toolhound_location', 'dim_entp_toolhound_location_sk ', 
'dim_entp_toolhound_location_nk', 'stage_toolhound_location_id', 13, 'Y', 'DIMENSION');

--NK--
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_location', 'LocationName', 'varchar(500)','TEXT', 'NK', 'LocationName',null, null, null, null, null, null, 1, 'Y');

--TA--
insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_location', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_location', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 3, 'Y');

--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_location', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_location', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 5, 'Y');
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------
--dim_entp_toolhound_inventory--
---------------------------------------------------

delete from generic_load_header where load_name = 'dim_entp_toolhound_inventory'
delete from generic_load_detail where load_name = 'dim_entp_toolhound_inventory' 

insert into generic_load_header 
(load_name, description, stage_table_name,
target_table_name, reprocess_table_name, target_sk_name, 
target_gnk_name, stage_sk_name, glt_id, active_flag, load_type)
values 
('dim_entp_toolhound_inventory', 'dim_entp_toolhound_inventory', 'yardkpi.stage_toolhound_inventory', 
'dbo.dim_entp_toolhound_inventory', 'yardkpi.reprocess_toolhound_inventory', 'dim_entp_toolhound_inventory_sk ', 
'dim_entp_toolhound_inventory_nk', 'stage_toolhound_inventory_id', 13, 'Y', 'DIMENSION');


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--NK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'partNo', 'varchar(500)','TEXT', 'NK', 'partNo',null, null, null, null, null, null, 1, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'ItemID', 'varchar(500)','TEXT', 'NK', 'ItemID',null, null, null, null, null, null, 2, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type,
stage_column_data_type_category, stage_column_key_type, target_column_name,
ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'LocationName', 'varchar(500)','TEXT', 'NK', 'LocationName',null, null, null, null, null, null, 3, 'Y');

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--TA--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 4, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'sub_source_code', 'varchar(50)', 'TEXT', 'TA', null, null, null, null, null, null, null, 5, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'category', 'varchar(500)', 'TEXT', 'TA', null, null, null, null, null, null, null, 6, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'subcategory', 'varchar(500)', 'TEXT', 'TA', null, null, null, null, null, null, null, 7, 'Y');


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--OA---

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'Description', 'varchar(500)', 'TEXT', 'OA', 'Description', null, null, null, null, null, null, 8, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'ident','varchar(500)', 'TEXT', 'OA', 'ident', null, null, null, null, null, null, 9, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'InventoryType', 'varchar(500)', 'TEXT', 'OA', 'InventoryType', null, null, null, null, null, null, 10, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'MinOnHand', 'DECIMAL', 'NUMBER', 'OA', 'MinOnHand', null, null, null, null, null, null, 11, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'MaxOnHand', 'DECIMAL', 'NUMBER', 'OA', 'MaxOnHand', null, null, null, null, null, null, 12, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'QtyOnHand', 'DECIMAL', 'NUMBER', 'OA', 'QtyOnHand', null, null, null, null, null, null, 13, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'Issued', 'DECIMAL', 'NUMBER', 'OA', 'Issued', null, null, null, null, null, null, 14, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'TransitInBound', 'DECIMAL', 'NUMBER', 'OA', 'TransitInBound', null, null, null, null, null, null, 15, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'Reserved',  'DECIMAL', 'NUMBER', 'OA', 'Reserved', null, null, null, null, null, null, 16, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'InKit', 'DECIMAL', 'NUMBER', 'OA', 'InKit', null, null, null, null, null, null, 17, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'Total', 'DECIMAL', 'NUMBER', 'OA', 'Total', null, null, null, null, null, null, 18, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'InTransitOutBound', 'DECIMAL', 'NUMBER', 'OA', 'InTransitOutBound', null, null, null, null, null, null, 19, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'OnPurchaseOrder', 'DECIMAL', 'NUMBER', 'OA', 'OnPurchaseOrder', null, null, null, null, null, null, 20, 'Y');

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--RK--

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'dim_entp_toolhound_category_nk', 'int', 'NUMBER', 'RK', 'dim_entp_toolhound_category_nk', 'dim_entp_toolhound_category_v', 'dim_entp_toolhound_category_nk', 'category', 'category', null, null, 21, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'dim_entp_toolhound_subcategory_nk', 'int', 'NUMBER', 'RK', 'dim_entp_toolhound_subcategory_nk', 'dim_entp_toolhound_subcategory_v', 'dim_entp_toolhound_subcategory_nk', 'subcategory', 'subcategory', null, null, 22, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'dim_entp_toolhound_location_nk', 'int', 'NUMBER', 'RK', 'dim_entp_toolhound_location_nk', 'dim_entp_toolhound_location_v', 'dim_entp_toolhound_location_nk', 'LocationName', 'LocationName', null, null, 23, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'dim_ent_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_source_nk', 'dim_ent_source', 'dim_ent_source_nk', 'source_name', 'source_code', null, null, 24, 'Y');

insert into generic_load_detail 
(load_name, stage_column_name, stage_column_data_type, stage_column_data_type_category, stage_column_key_type, target_column_name, ref_table_name, ref_gnk_name, ref_target_column_name1, ref_source_column_name1, ref_target_column_name2, ref_source_column_name2, sl_no, active_flag) values
('dim_entp_toolhound_inventory', 'dim_ent_sub_source_nk', 'int', 'NUMBER', 'RK', 'dim_ent_sub_source_nk', 'dim_ent_sub_source', 'dim_ent_sub_source_nk', 'sub_source_name', 'sub_source_code', 'source_name', 'source_code', 25, 'Y');
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--rollback tran
--commit tran