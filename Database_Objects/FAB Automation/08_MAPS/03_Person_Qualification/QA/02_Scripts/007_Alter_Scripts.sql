update [generic_load_detail]
set stage_column_key_type='NK'
where load_name='dim_entp_maps_person_qualification'
and stage_column_name='ql_qualification_id'
 
GO

update [generic_load_detail]
set stage_column_key_type='NK'
where load_name='dim_entp_maps_person_qualification'
and stage_column_name='id_number'
 
GO 
 
update [generic_load_detail]
set stage_column_key_type='NK'
where load_name='dim_entp_maps_person_qualification'
and stage_column_name='activity_id'
 
GO 

update [generic_load_detail]
set stage_column_key_type='NK'
where load_name='dim_entp_maps_person_qualification'
and stage_column_name='ql_authority_id'

GO 
 
update [generic_load_detail]
set stage_column_key_type='NK'
where load_name='dim_entp_maps_person_qualification'
and stage_column_name='itemtag_id'

GO

update plp_parameter_value
set parameter_value='2024-10-05 12:36:58.280'
where parameter_code='start_date'
and pipeline_code='pl_maps_person_qualification_raw_to_synapse'

GO

update [generic_load_detail]
set stage_column_data_type='varchar(500)'
where load_name='dim_entp_maps_person_qualification' and stage_column_name='mandatory'

GO

update [generic_load_detail]
set stage_column_data_type_category='TEXT'
where load_name='dim_entp_maps_person_qualification' and stage_column_name='mandatory'

GO

ALTER TABLE [gpd].[stage_maps_person_qualification] alter column mandatory varchar(500);

GO

ALTER TABLE [gpd].[reprocess_dim_entp_maps_person_qualification] alter column mandatory varchar(500);

GO

ALTER TABLE dbo.dim_entp_maps_person_qualification alter column mandatory varchar(500);
