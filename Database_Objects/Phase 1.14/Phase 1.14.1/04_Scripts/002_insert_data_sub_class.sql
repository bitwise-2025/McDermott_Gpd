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
           ,'Hdms Estimated Booking Mhrs'
           ,1
           ,@Date
           ,NULL
           ,'N'
           ,@DATA_CLASS_NK
           ,@DATA_CLASS_NAME
            ,'Hdms Estimated Booking Mhrs'
           ,'Hdms Estimated Booking Mhrs'
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
           ,'Hdms Cumulative Actual Booking Mhrs'
           ,1
           ,@Date
           ,NULL
           ,'N'
           ,@DATA_CLASS_NK
           ,@DATA_CLASS_NAME
           ,'Hdms Cumulative Actual Booking Mhrs'
           ,'Hdms Cumulative Actual Booking Mhrs'
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
           ,'Hdms Daily Actual Booking Mhrs'
           ,1
           ,@Date
           ,NULL
           ,'N'
           ,@DATA_CLASS_NK
           ,@DATA_CLASS_NAME
          ,'Hdms Daily Actual Booking Mhrs'
           ,'Hdms Daily Actual Booking Mhrs'
           ,NULL