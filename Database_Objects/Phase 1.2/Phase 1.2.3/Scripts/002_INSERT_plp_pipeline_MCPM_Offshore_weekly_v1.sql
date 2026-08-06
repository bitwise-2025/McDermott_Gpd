DECLARE @Date DATETIME;
SET @Date = GETDATE();


INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
 VALUES ('pl_mcpmdata_offshore_weekly_source_to_stage','NCSA','MCPM Offshore Week to stage',NULL,'1','ssampathkumar@mcdermott.com', @Date,47)
 
 INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
 VALUES ('pl_mcpmdata_offshore_weekly_stage_to_raw','NCSA','MCPM Offshore Week stage to raw',NULL,'1','ssampathkumar@mcdermott.com', @Date,47)


INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
 VALUES ('pl_mcpmdata_offshore_weekly_raw_to_synapse','NCSA','MCPM Offshore Week raw to synapse stage',NULL,'1','ssampathkumar@mcdermott.com', @Date,47)

