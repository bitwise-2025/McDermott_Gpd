

DECLARE @Date DATETIME;
SET @Date = GETDATE();

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
VALUES ('pl_wa_mcpm_master_pipeline','NCSA','WA_MCPM_data movement to synapse',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date,47)

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
VALUES ('pl_uom_mcpm_master_pipeline','NCSA','UOM_MCPM_data movement to synapse',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date,47)


INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
VALUES ('pl_unit_mcpm_master_pipeline','NCSA','UNIT_MCPM_data movement to synapse',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date,47)

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
VALUES ('pl_phases_mcpm_master_pipeline','NCSA','Phases_MCPM_data movement to synapse',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date,47)