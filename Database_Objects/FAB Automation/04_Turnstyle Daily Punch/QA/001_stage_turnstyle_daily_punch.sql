CREATE TABLE [gpd].[stage_turnstyle_daily_punch]
(
    [stage_turnstyle_daily_punch_id] [int] IDENTITY(1,1) NOT NULL,
    [person_no_external] [nvarchar](50) NOT NULL,
    [ts_date] [date] NULL,
    [punch] [time](7) NULL,
    [device_name] [nvarchar](200) NULL,
    [punch_type] [varchar](100) NULL,
    [run_timestamp] [datetime] NULL,
CONSTRAINT [stage_turnstyle_daily_punch_id] PRIMARY KEY NONCLUSTERED 
    (
        [stage_turnstyle_daily_punch_id] ASC
    ) NOT ENFORCED 
)
WITH
(
    DISTRIBUTION = ROUND_ROBIN,
    CLUSTERED COLUMNSTORE INDEX
)
GO