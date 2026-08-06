/****** Object:  Table [dbo].[dim_ent_contract]    Script Date: 6/24/2021 4:54:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_entp_project_week_closing_period]
(
	[dim_entp_project_week_closing_period_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_entp_project_week_closing_period_nk] [int] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	dim_ent_week_closing_period_nk int NOT NUll,
	dim_entp_project_nk int NOT NULL
)
WITH
(
	DISTRIBUTION = HASH (dim_entp_project_nk ),
	CLUSTERED COLUMNSTORE INDEX
)
GO

delete from [dbo].[dim_entp_project_week_closing_period
go


insert into dim_entp_project_week_closing_period
(	[dim_entp_project_week_closing_period_nk],
	[start_date],
	[end_date],
	[hash_code],
	[active],
	[created_date_time],
	[modified_date_time],
	[late_arrival_flag],
	dim_ent_week_closing_period_nk,
	dim_entp_project_nk
	)
select 1,'01/01/2000','12/31/2030','',1,'06/24/2021','06/24/2021','N', (select dim_ent_week_closing_period_nk from dim_ent_week_closing_period where 
    week_closing_period = '1-Sun-Sat' ),
(select dim_entp_project_nk from dim_entp_project where project_name = 'Borstar Bay 3' and active = 1)

go
