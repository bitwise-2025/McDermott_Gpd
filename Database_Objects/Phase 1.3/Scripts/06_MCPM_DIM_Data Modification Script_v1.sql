--Updating the length in the dim config for work area
update [dbo].[generic_load_detail] 
set stage_column_data_type='varchar(5)'
where load_name in ('dim_entp_work_area')
and stage_column_name='UnitID'
and stage_column_key_type='TA'


--Any PLP scripts to include the project addition to dim