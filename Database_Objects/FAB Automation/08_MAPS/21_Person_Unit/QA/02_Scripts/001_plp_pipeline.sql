INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_maps_person_unit_source_to_stage','NCSA','MAPS - Person unit data movement from source to stage',NULL,1,'aditya.anand2@mcdermott.com','2023-08-10 06:42:19.043',47)

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_maps_person_unit_stage_to_raw','NCSA','Person unit data movement from stage to raw',NULL,1,'aditya.anand2@mcdermott.com','2023-08-10 06:42:19.043',47)

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_maps_person_unit_raw_to_synapse','NCSA','Person unit data movement from raw to synapse',NULL,1,'aditya.anand2@mcdermott.com','2023-08-10 06:42:19.043',47)

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_maps_person_unit_master_pipeline','NCSA','MAPS - Person unit data movement to synapse',NULL,1,'aditya.anand2@mcdermott.com','2023-08-10 06:42:19.043',47)

