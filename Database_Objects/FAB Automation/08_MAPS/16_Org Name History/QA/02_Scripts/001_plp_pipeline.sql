INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_maps_org_name_history_source_to_stage','NCSA','MAPS - Organisation Name History data movement from source to stage',NULL,1,'aditya.anand2@mcdermott.com','2023-08-18 06:42:19.043',47)

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_maps_org_name_history_stage_to_raw','NCSA','Organisation Name History data movement from stage to raw',NULL,1,'aditya.anand2@mcdermott.com','2023-08-21 06:42:19.043',47)

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_maps_org_name_history_raw_to_synapse','NCSA','Organisation Name History data movement from raw to synapse',NULL,1,'aditya.anand2@mcdermott.com','2023-08-21 06:42:19.043',47)

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_maps_org_name_history_master_pipeline','NCSA','MAPS - Organisation Name History data movement to synapse',NULL,1,'aditya.anand2@mcdermott.com','2023-08-21 06:42:19.043',47)
