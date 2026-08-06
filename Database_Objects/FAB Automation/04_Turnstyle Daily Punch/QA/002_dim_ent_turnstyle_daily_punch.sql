CREATE TABLE [dbo].[dim_ent_turnstyle_daily_punch]
(
    [dim_ent_turnstyle_daily_punch_sk] [bigint] IDENTITY(1,1) NOT NULL,
    [dim_ent_turnstyle_daily_punch_nk] [bigint] NOT NULL,
    [start_date] [datetime] NOT NULL,
    [end_date] [datetime] NOT NULL,
    [late_arrival_flag] [varchar](1) NOT NULL,
    [created_date_time] [datetime] NULL,
    [modified_date_time] [datetime] NULL,
    [hash_code] [varchar](5000) NOT NULL,
    [active] [int] NULL,
    [person_no_external] [nvarchar](50) NOT NULL,
    [ts_date] [date] NULL,
    [punch] [time](7) NULL,
    [device_name] [nvarchar](200) NULL,
    [punch_type] [varchar](100) NULL,
    [run_timestamp] [datetime] NULL,
CONSTRAINT [dim_ent_turnstyle_daily_punch_sk] PRIMARY KEY NONCLUSTERED 
    (
        [dim_ent_turnstyle_daily_punch_sk] ASC
    ) NOT ENFORCED 
)
WITH
(
    DISTRIBUTION = ROUND_ROBIN,
    CLUSTERED COLUMNSTORE INDEX
)
GO