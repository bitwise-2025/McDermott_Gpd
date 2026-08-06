/* Add 4 + 3 new columns to the table dim_ent_date.  */

ALTER TABLE [dbo].[dim_ent_date]
ADD [week_start_date] [datetime] NULL;

ALTER TABLE [dbo].[dim_ent_date]
ADD [week_end_date] [datetime] NULL;

ALTER TABLE [dbo].[dim_ent_date]
ADD [month_start_date] [datetime] NULL;

ALTER TABLE [dbo].[dim_ent_date]
ADD [month_end_date] [datetime] NULL;


ALTER TABLE [dbo].[dim_ent_date]
ADD [week_start_date2] [date] NULL;

ALTER TABLE [dbo].[dim_ent_date]
ADD [year_start_date] [date] NULL;

ALTER TABLE [dbo].[dim_ent_date]
ADD [year_end_date] [date] NULL;
