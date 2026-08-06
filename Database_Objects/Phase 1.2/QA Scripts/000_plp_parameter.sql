--------------------------------------------------AK Scripts---------------------------------------
DECLARE @Date DATETIME;
SET @Date = GETDATE();


INSERT INTO [dbo].[plp_parameter]
([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])
     VALUES('projectdetail_json','PIPELINE','Gets project details like projectnumber, database etc.','T','1','8000',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_parameter]
([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])
     VALUES('databaseName','PIPELINE','Gets the databasename from source','T','1','255',NULL,1,'ssampathkumar@mcdermott.com',@Date)