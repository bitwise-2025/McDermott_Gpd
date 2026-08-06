DECLARE @Date DATETIME;
SET @Date = GETDATE();

DECLARE @DATA_SUB_CLASS_NK INT;
DECLARE @DATA_CLASS_NK INT;
DECLARE @DATA_CLASS_NAME varchar(100);

SET @DATA_SUB_CLASS_NK=(SELECT max(dim_ent_data_sub_class_nk) + 1 FROM dbo.dim_ent_data_sub_class );
SET @DATA_CLASS_NK=(SELECT dim_ent_data_class_nk from dbo.dim_Ent_data_class where data_class_name='Time');
SET @DATA_CLASS_NAME=(SELECT data_class_name from dbo.dim_Ent_data_class where data_class_name='Time');


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
           ,'Approved EAC Hours'
           ,1
           ,@Date
           ,NULL
           ,'N'
           ,@DATA_CLASS_NK
           ,@DATA_CLASS_NAME
           ,'Approved EAC Hours'
           ,'Approved EAC Hours'
           ,'BY JDE COA'
		   FROM dbo.dim_ent_data_sub_class
		   WHERE dim_ent_data_sub_class_nk=(SELECT max(dim_ent_data_sub_class_nk)  FROM dbo.dim_ent_data_sub_class)

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
           ,'Approved ETCH Hours'
           ,1
           ,@Date
           ,NULL
           ,'N'
           ,@DATA_CLASS_NK
           ,@DATA_CLASS_NAME
           ,'Approved ETCH Hours'
           ,'Approved ETCH Hours'
           ,'BY JDE COA'
		   FROM dbo.dim_ent_data_sub_class
		   WHERE dim_ent_data_sub_class_nk=(SELECT max(dim_ent_data_sub_class_nk)  FROM dbo.dim_ent_data_sub_class)
		   
SET @DATA_SUB_CLASS_NK=(SELECT max(dim_ent_data_sub_class_nk) + 1 FROM dbo.dim_ent_data_sub_class );
SET @DATA_CLASS_NK=(SELECT dim_ent_data_class_nk from dbo.dim_Ent_data_class where data_class_name='Amount');
SET @DATA_CLASS_NAME=(SELECT data_class_name from dbo.dim_Ent_data_class where data_class_name='Amount');
		   
		   

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
           ,'Approved EAC Amount'
           ,1
           ,@Date
           ,NULL
           ,'N'
           ,@DATA_CLASS_NK
           ,@DATA_CLASS_NAME
           ,'Approved EAC Amount'
           ,'Approved EAC Amount'
           ,'BY JDE COA'
		   FROM dbo.dim_ent_data_sub_class
		   WHERE dim_ent_data_sub_class_nk=(SELECT max(dim_ent_data_sub_class_nk)  FROM dbo.dim_ent_data_sub_class)
		   
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
           ,'Approved ETC Amount'
           ,1
           ,@Date
           ,NULL
           ,'N'
           ,@DATA_CLASS_NK
           ,@DATA_CLASS_NAME
           ,'Approved ETC Amount'
           ,'Approved ETC Amount'
           ,'BY JDE COA'
		   FROM dbo.dim_ent_data_sub_class
		   WHERE dim_ent_data_sub_class_nk=(SELECT max(dim_ent_data_sub_class_nk)  FROM dbo.dim_ent_data_sub_class)
		   
SET @DATA_SUB_CLASS_NK=(SELECT max(dim_ent_data_sub_class_nk) + 1 FROM dbo.dim_ent_data_sub_class );
SET @DATA_CLASS_NK=(SELECT dim_ent_data_class_nk from dbo.dim_Ent_data_class where data_class_name='Quantity');
SET @DATA_CLASS_NAME=(SELECT data_class_name from dbo.dim_Ent_data_class where data_class_name='Quantity');


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
           ,'Approved EAC Quantity'
           ,1
           ,@Date
           ,NULL
           ,'N'
           ,@DATA_CLASS_NK
           ,@DATA_CLASS_NAME
           ,'Approved EAC Quantity'
           ,'Approved EAC Quantity'
           ,'BY JDE COA'
		   FROM dbo.dim_ent_data_sub_class
		   WHERE dim_ent_data_sub_class_nk=(SELECT max(dim_ent_data_sub_class_nk)  FROM dbo.dim_ent_data_sub_class)
