--Step 1: Correct Existing Records

UPDATE [dbo].[dim_ent_data_sub_class] 
set gpd_level='By IWP Split/Activity'
where data_sub_class_name = 'Earned Units'

UPDATE [dbo].[dim_ent_data_sub_class] 
set gpd_level='By IWP Split/Activity'
where data_sub_class_name = 'At Completion Units'

UPDATE [dbo].[dim_ent_data_sub_class] 
set gpd_level='By IWP Split/Activity'
where data_sub_class_name = 'Remaining Early Units'

