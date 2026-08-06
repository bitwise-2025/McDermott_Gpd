DECLARE @Date DATETIME;
SET @Date = GETDATE();

DECLARE @DATA_SUB_CLASS_NK INT;
DECLARE @DATA_CLASS_NK INT;
DECLARE @DATA_CLASS_NAME varchar(100);

SET @DATA_SUB_CLASS_NK=(SELECT max(dim_ent_data_sub_class_nk) + 1 FROM dbo.dim_ent_data_sub_class );
SET @DATA_CLASS_NK=(SELECT dim_ent_data_class_nk from dbo.dim_Ent_data_class    where data_class_name='Time');
SET @DATA_CLASS_NAME=(SELECT data_class_name from dbo.dim_Ent_data_class    where data_class_name='Time');
 
INSERT INTO [dbo].[dim_ent_data_sub_class]
           ([dim_ent_data_sub_class_nk]
           ,[start_date]
           ,[end_date]
           ,[hash_code]
           ,[active]
           ,[created_date_time]
           ,[modified_date_time]
           ,[late_arrival_flag]
           ,[dim_ent_data_class_nk]
           ,[data_class_name]
           ,[data_sub_class_name]
           ,[alternative_data_sub_class_name]
           ,[gpd_level])
     SELECT
           @DATA_SUB_CLASS_NK
		   ,'2000-01-01 00:00:00.000'
           ,'2050-12-30 00:00:00.000'
           ,'Hdms Cumulative Earned Hours'
           ,1
           ,@Date
           ,NULL
           ,'N'
           ,@DATA_CLASS_NK
           ,@DATA_CLASS_NAME
           ,'Hdms Cumulative Earned Hours'
           ,'Hdms Cumulative Earned Hours'
           ,NULL



		   

SET @DATA_SUB_CLASS_NK=(SELECT max(dim_ent_data_sub_class_nk) + 1 FROM dbo.dim_ent_data_sub_class );
		   
INSERT INTO [dbo].[dim_ent_data_sub_class]
           ([dim_ent_data_sub_class_nk]
           ,[start_date]
           ,[end_date]
           ,[hash_code]
           ,[active]
           ,[created_date_time]
           ,[modified_date_time]
           ,[late_arrival_flag]
           ,[dim_ent_data_class_nk]
           ,[data_class_name]
           ,[data_sub_class_name]
           ,[alternative_data_sub_class_name]
           ,[gpd_level])
     SELECT
           @DATA_SUB_CLASS_NK
		   ,'2000-01-01 00:00:00.000'
           ,'2050-12-30 00:00:00.000'
           ,'Hdms Man Hours'
           ,1
           ,@Date
           ,NULL
           ,'N'
           ,@DATA_CLASS_NK
           ,@DATA_CLASS_NAME
           ,'Hdms Man Hours'
           ,'Hdms Man Hours'
           ,NULL

SET @DATA_SUB_CLASS_NK=(SELECT max(dim_ent_data_sub_class_nk) + 1 FROM dbo.dim_ent_data_sub_class );
SET @DATA_CLASS_NK=(SELECT dim_ent_data_class_nk from dbo.dim_Ent_data_class    where data_class_name='Percentage');
SET @DATA_CLASS_NAME=(SELECT data_class_name from dbo.dim_Ent_data_class    where data_class_name='Percentage');
		   

INSERT INTO [dbo].[dim_ent_data_sub_class]
           ([dim_ent_data_sub_class_nk]
           ,[start_date]
           ,[end_date]
           ,[hash_code]
           ,[active]
           ,[created_date_time]
           ,[modified_date_time]
           ,[late_arrival_flag]
           ,[dim_ent_data_class_nk]
           ,[data_class_name]
           ,[data_sub_class_name]
           ,[alternative_data_sub_class_name]
           ,[gpd_level])
     SELECT
           @DATA_SUB_CLASS_NK
		   ,'2000-01-01 00:00:00.000'
           ,'2050-12-30 00:00:00.000'
           ,'Hdms Progress Percentage'
           ,1
           ,@Date
           ,NULL
           ,'N'
           ,@DATA_CLASS_NK
           ,@DATA_CLASS_NAME
           ,'Hdms Progress Percentage'
           ,'Hdms Progress Percentage'
           ,NULL


SET @DATA_SUB_CLASS_NK=(SELECT max(dim_ent_data_sub_class_nk) + 1 FROM dbo.dim_ent_data_sub_class );
	
		   
INSERT INTO [dbo].[dim_ent_data_sub_class]
           ([dim_ent_data_sub_class_nk]
           ,[start_date]
           ,[end_date]
           ,[hash_code]
           ,[active]
           ,[created_date_time]
           ,[modified_date_time]
           ,[late_arrival_flag]
           ,[dim_ent_data_class_nk]
           ,[data_class_name]
           ,[data_sub_class_name]
           ,[alternative_data_sub_class_name]
           ,[gpd_level])
     SELECT
           @DATA_SUB_CLASS_NK
		   ,'2000-01-01 00:00:00.000'
           ,'2050-12-30 00:00:00.000'
           ,'Hdms Previous Progress Percentage'
           ,1
           ,@Date
           ,NULL
           ,'N'
           ,@DATA_CLASS_NK
           ,@DATA_CLASS_NAME
           ,'Hdms Previous Progress Percentage'
           ,'Hdms Previous Progress Percentage'
           ,NULL
