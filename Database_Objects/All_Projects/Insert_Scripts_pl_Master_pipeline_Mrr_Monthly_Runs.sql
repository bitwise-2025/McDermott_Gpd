insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_Master_pipeline_Mrr_Monthly_Runs','NCSA','SMAT Data Extract','NULL','1','sundararaju.batta@mcdermott.com','2025-11-24 06:48:33.917','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Master_pipeline_Mrr_Monthly_Runs','NetworkFolder','project_number','1','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-11-24 06:48:33.917')
GO


insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','CYJEA','1','sundararaju.batta@mcdermott.com','2025-11-24 06:48:33.917','pl_Master_pipeline_Mrr_Monthly_Runs','NetworkFolder')