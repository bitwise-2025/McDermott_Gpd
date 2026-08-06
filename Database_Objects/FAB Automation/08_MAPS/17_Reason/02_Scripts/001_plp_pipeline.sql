INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_maps_reason_source_to_stage','NCSA','MAPS - Reason data movement from source to stage',NULL,1,'aditya.anand2@mcdermott.com','2023-08-03 06:42:19.043',47)

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_maps_reason_stage_to_raw','NCSA','Reason data movement from stage to raw',NULL,1,'aditya.anand2@mcdermott.com','2023-08-03 06:42:19.043',47)

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_maps_reason_raw_to_synapse','NCSA','Reason data movement from raw to synapse',NULL,1,'aditya.anand2@mcdermott.com','2023-08-03 06:42:19.043',47)

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_maps_reason_master_pipeline','NCSA','MAPS - Reason data movement to synapse',NULL,1,'aditya.anand2@mcdermott.com','2023-08-03 06:42:19.043',47)
