--------------------------------------------------AK Scripts-Prod Scripts---------------------------------------
DECLARE @Date DATETIME;
SET @Date = GETDATE();


INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_ncsa_project_list','NCSA','Common Parameters for Sitepro to NCSA Pipelines',NULL,1,'ssampathkumar@mcdermott.com',@Date,47)
	

