DECLARE @Date DATETIME;
SET @Date = GETDATE();


INSERT INTO [dbo].[plp_parameter]
([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])
     VALUES('Approved_EAC_Quantity_code','PIPELINE','Approved_EAC_Quantity_code','T','1','255',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_parameter]
([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])
     VALUES('Approved_EAC_Hours_code','PIPELINE','Approved_EAC_Hours_code','T','1','255',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_parameter]
([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])
     VALUES('Approved_EAC_Amount_code','PIPELINE','Approved_EAC_Amount_code','T','1','255',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_parameter]
([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])
     VALUES('Approved_ETC_Hours_code','PIPELINE','Approved_ETC_Hours_code','T','1','255',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_parameter]
([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])
     VALUES('Approved_ETC_Amount_code','PIPELINE','Approved_ETC_Amount_code','T','1','255',NULL,1,'abhijit.kharat@mcdermott.com',@Date)


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_onshore_data_raw_to_synapse_stage','MCPM','Approved_EAC_Quantity_code',51,'Approved_EAC_Quantity_code','',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_onshore_data_raw_to_synapse_stage','MCPM','Approved_EAC_Hours_code',52,'Approved_EAC_Hours_code','',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_onshore_data_raw_to_synapse_stage','MCPM','Approved_EAC_Amount_code',53,'Approved_EAC_Amount_code','',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_onshore_data_raw_to_synapse_stage','MCPM','Approved_ETC_Hours_code',54,'Approved_ETC_Hours_code','',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_onshore_data_raw_to_synapse_stage','MCPM','Approved_ETC_Amount_code',55,'Approved_ETC_Amount_code','',NULL,1,'abhijit.kharat@mcdermott.com',@Date)



INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('Approved_EAC_Quantity_code','Approved EAC Quantity',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_onshore_data_raw_to_synapse_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('Approved_EAC_Hours_code','Approved EAC Hours',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_onshore_data_raw_to_synapse_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('Approved_EAC_Amount_code','Approved EAC Amount',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_onshore_data_raw_to_synapse_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('Approved_ETC_Hours_code','Approved ETCH Hours',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_onshore_data_raw_to_synapse_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('Approved_ETC_Amount_code','Approved ETC Amount',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_onshore_data_raw_to_synapse_stage','MCPM')


	 
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_monthly_raw_to_synapse','MCPM','Approved_EAC_Quantity_code',51,'Approved_EAC_Quantity_code','',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_monthly_raw_to_synapse','MCPM','Approved_EAC_Hours_code',52,'Approved_EAC_Hours_code','',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_monthly_raw_to_synapse','MCPM','Approved_EAC_Amount_code',53,'Approved_EAC_Amount_code','',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_monthly_raw_to_synapse','MCPM','Approved_ETC_Hours_code',54,'Approved_ETC_Hours_code','',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_monthly_raw_to_synapse','MCPM','Approved_ETC_Amount_code',55,'Approved_ETC_Amount_code','',NULL,1,'abhijit.kharat@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('Approved_EAC_Quantity_code','Approved EAC Quantity',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_offshore_monthly_raw_to_synapse','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('Approved_EAC_Hours_code','Approved EAC Hours',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_offshore_monthly_raw_to_synapse','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('Approved_EAC_Amount_code','Approved EAC Amount',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_offshore_monthly_raw_to_synapse','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('Approved_ETC_Hours_code','Approved ETCH Hours',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_offshore_monthly_raw_to_synapse','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('Approved_ETC_Amount_code','Approved ETC Amount',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_offshore_monthly_raw_to_synapse','MCPM')






