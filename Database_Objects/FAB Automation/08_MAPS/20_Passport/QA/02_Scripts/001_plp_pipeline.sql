INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_maps_passport_source_to_stage','NCSA','MAPS - Passport data movement from source to stage',NULL,1,'aditya.anand2@mcdermott.com','2023-08-08 06:42:19.043',47)

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_maps_passport_stage_to_raw','NCSA','Passport data movement from stage to raw',NULL,1,'aditya.anand2@mcdermott.com','2023-08-08 06:42:19.043',47)

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_maps_passport_raw_to_synapse','NCSA','Passport data movement from raw to synapse',NULL,1,'aditya.anand2@mcdermott.com','2023-08-08 06:42:19.043',47)

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_maps_passport_master_pipeline','NCSA','MAPS - Passport data movement to synapse',NULL,1,'aditya.anand2@mcdermott.com','2023-08-08 06:42:19.043',47)
