/****** Object:  Table [dbo].[dim_ent_contract]    Script Date: 6/24/2021 4:54:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_ent_week_closing_period]
(
	[dim_ent_week_closing_period_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_week_closing_period_nk] [int] NOT NULL,
	[week_closing_period] [varchar](25) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL
)
WITH
(
	DISTRIBUTION = HASH ( [week_closing_period] ),
	CLUSTERED COLUMNSTORE INDEX
)
GO


delete from dim_ent_week_closing_period

go

insert into dim_ent_week_closing_period
(	[dim_ent_week_closing_period_nk],
	[week_closing_period],
	[start_date],
	[end_date],
	[hash_code],
	[active],
	[created_date_time],
	[modified_date_time],
	[late_arrival_flag]
)
values (1,'1-Sun-Sat','01/01/2000','12/31/2030','',1,'06/24/2021','06/24/2021','N')

go
insert into dim_ent_week_closing_period
(	[dim_ent_week_closing_period_nk],
	[week_closing_period],
	[start_date],
	[end_date],
	[hash_code],
	[active],
	[created_date_time],
	[modified_date_time],
	[late_arrival_flag]
)
values (2,'2-Mon-Sun','01/01/2000','12/31/2030','',1,'06/24/2021','06/24/2021','N')
go

insert into dim_ent_week_closing_period
(	[dim_ent_week_closing_period_nk],
	[week_closing_period],
	[start_date],
	[end_date],
	[hash_code],
	[active],
	[created_date_time],
	[modified_date_time],
	[late_arrival_flag]
)
values (3,'3-Tue-Mon','01/01/2000','12/31/2030','',1,'06/24/2021','06/24/2021','N')
go
insert into dim_ent_week_closing_period
(	[dim_ent_week_closing_period_nk],
	[week_closing_period],
	[start_date],
	[end_date],
	[hash_code],
	[active],
	[created_date_time],
	[modified_date_time],
	[late_arrival_flag]
)
values (4,'4-Wed-Tue','01/01/2000','12/31/2030','',1,'06/24/2021','06/24/2021','N')
go
insert into dim_ent_week_closing_period
(	[dim_ent_week_closing_period_nk],
	[week_closing_period],
	[start_date],
	[end_date],
	[hash_code],
	[active],
	[created_date_time],
	[modified_date_time],
	[late_arrival_flag]
)
values (5,'5-Thu-Wed','01/01/2000','12/31/2030','',1,'06/24/2021','06/24/2021','N')
go
insert into dim_ent_week_closing_period
(	[dim_ent_week_closing_period_nk],
	[week_closing_period],
	[start_date],
	[end_date],
	[hash_code],
	[active],
	[created_date_time],
	[modified_date_time],
	[late_arrival_flag]
)
values (6,'6-Fri-Thu','01/01/2000','12/31/2030','',1,'06/24/2021','06/24/2021','N')
go
insert into dim_ent_week_closing_period
(	[dim_ent_week_closing_period_nk],
	[week_closing_period],
	[start_date],
	[end_date],
	[hash_code],
	[active],
	[created_date_time],
	[modified_date_time],
	[late_arrival_flag]
)
values (7,'7-Sat-Fri','01/01/2000','12/31/2030','',1,'06/24/2021','06/24/2021','N')
go
