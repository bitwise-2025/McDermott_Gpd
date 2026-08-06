update  generic_load_detail 
set stage_column_data_type='bigint' 
where load_name='dim_entp_eng_ven_milestone' 
and gld_id in (3316,3145)