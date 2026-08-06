--Alter dim_entp_phase by increasing the length from 3 to 10
--ALTER TABLE [dbo].[dim_entp_phase]
--ALTER COLUMN [phase_code] [varchar](10) NOT NULL;

--GO
-----------------------------------------------
DECLARE @NK_v INT;
DECLARE @PRJ_NK_v INT;

SELECT @PRJ_NK_v = dim_entp_project_nk from dbo.dim_entp_project where active=1 and project_number='D7072';

SELECT @NK_v= MAX(dim_entp_phase_nk)+1  from [dbo].[dim_entp_phase];

--Insert the missing Phase codes for Marjan Project(D7072)
INSERT INTO [dbo].[dim_entp_phase]
           ([dim_entp_phase_nk]
           ,[phase_code]
           ,[start_date]
           ,[end_date]
           ,[hash_code]
           ,[active]
           ,[created_date_time]
           ,[modified_date_time]
           ,[late_arrival_flag]
           ,[phase_name]
           ,[dim_entp_project_nk]
           ,[project_number])
     VALUES
           (@NK_v
           ,'TR'
           ,'2022-02-15 06:24:39.717'
           ,'9999-12-30 00:00:00.000'
           ,'Phase-TR'
           ,1
           ,'2022-02-15 06:24:39.717'
           ,NULL
           ,'N'
           ,'Transportation'
           ,@PRJ_NK_v
           ,'D7072')
GO


SELECT @NK_v= MAX(dim_entp_phase_nk)+1  from [dbo].[dim_entp_phase];

INSERT INTO [dbo].[dim_entp_phase]
           ([dim_entp_phase_nk]
           ,[phase_code]
           ,[start_date]
           ,[end_date]
           ,[hash_code]
           ,[active]
           ,[created_date_time]
           ,[modified_date_time]
           ,[late_arrival_flag]
           ,[phase_name]
           ,[dim_entp_project_nk]
           ,[project_number])
     VALUES
           (@NK_v
           ,'PCOM'
           ,'2022-02-15 06:24:39.717'
           ,'9999-12-30 00:00:00.000'
           ,'Phase-PCOM'
           ,1
           ,'2022-02-15 06:24:39.717'
           ,NULL
           ,'N'
           ,'Precomm'
           ,@PRJ_NK_v
           ,'D7072')
GO

SELECT @NK_v= MAX(dim_entp_phase_nk)+1  from [dbo].[dim_entp_phase];

INSERT INTO [dbo].[dim_entp_phase]
           ([dim_entp_phase_nk]
           ,[phase_code]
           ,[start_date]
           ,[end_date]
           ,[hash_code]
           ,[active]
           ,[created_date_time]
           ,[modified_date_time]
           ,[late_arrival_flag]
           ,[phase_name]
           ,[dim_entp_project_nk]
           ,[project_number])
     VALUES
           (@NK_v
           ,'IN'
           ,'2022-02-15 06:24:39.717'
           ,'9999-12-30 00:00:00.000'
           ,'Phase-IN'
           ,1
           ,'2022-02-15 06:24:39.717'
           ,NULL
           ,'N'
           ,'Installation'
           ,@PRJ_NK_v
           ,'D7072')
GO

SELECT @NK_v= MAX(dim_entp_phase_nk)+1  from [dbo].[dim_entp_phase];

INSERT INTO [dbo].[dim_entp_phase]
           ([dim_entp_phase_nk]
           ,[phase_code]
           ,[start_date]
           ,[end_date]
           ,[hash_code]
           ,[active]
           ,[created_date_time]
           ,[modified_date_time]
           ,[late_arrival_flag]
           ,[phase_name]
           ,[dim_entp_project_nk]
           ,[project_number])
     VALUES
           (@NK_v
           ,'HK'
           ,'2022-02-15 06:24:39.717'
           ,'9999-12-30 00:00:00.000'
           ,'Phase-HK'
           ,1
           ,'2022-02-15 06:24:39.717'
           ,NULL
           ,'N'
           ,'Hookup'
           ,@PRJ_NK_v
           ,'D7072')
GO