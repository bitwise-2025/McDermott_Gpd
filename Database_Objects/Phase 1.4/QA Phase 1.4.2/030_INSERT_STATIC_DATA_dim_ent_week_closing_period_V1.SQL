--Step1] Alter table to add two new columns
alter table dim_ent_global_phase add psrlevel1_code varchar(10),psrlevel2_code varchar(10)

----------------

DECLARE @DATE DATETIME
DECLARE @VNK INT
SET @Date = getdate()

SELECT @VNK=MAX(dim_entp_project_week_closing_period_nk) from dim_entp_project_week_closing_period;

INSERT INTO [dbo].[dim_entp_project_week_closing_period]
           ([dim_entp_project_week_closing_period_nk]
           ,[start_date]
           ,[end_date]
           ,[hash_code]
           ,[active]
           ,[created_date_time]
           ,[modified_date_time]
           ,[late_arrival_flag]
           ,[dim_ent_week_closing_period_nk]
           ,[dim_entp_project_nk])



select @VNK+1, @Date,'2050-12-31 00:00:00.000',week_closing_period,'1',@Date,NULL,'N',dim_ent_week_closing_period_nk ,P.dim_entp_project_nk from  dim_ent_week_closing_period W
LEFT JOIN dim_entp_project P ON 1=1 and project_number in ('D7415') and P.active=1
where W.week_closing_period='6-Fri-Thu'
UNION

select @VNK+2, @Date,'2050-12-31 00:00:00.000',week_closing_period,'1',@Date,NULL,'N',dim_ent_week_closing_period_nk ,P.dim_entp_project_nk from  dim_ent_week_closing_period W
LEFT JOIN dim_entp_project P ON 1=1 and project_number in ('D7512') and P.active=1
where W.week_closing_period='6-Fri-Thu'
UNION

select @VNK+3, @Date,'2050-12-31 00:00:00.000',week_closing_period,'1',@Date,NULL,'N',dim_ent_week_closing_period_nk ,P.dim_entp_project_nk from  dim_ent_week_closing_period W
LEFT JOIN dim_entp_project P ON 1=1 and project_number in ('D7521') and P.active=1
where W.week_closing_period='6-Fri-Thu'


select @VNK+4, @Date,'2050-12-31 00:00:00.000',week_closing_period,'1',@Date,NULL,'N',dim_ent_week_closing_period_nk ,P.dim_entp_project_nk from  dim_ent_week_closing_period W
LEFT JOIN dim_entp_project P ON 1=1 and project_number in ('R4036') and P.active=1
where W.week_closing_period='7-Sat-Fri'