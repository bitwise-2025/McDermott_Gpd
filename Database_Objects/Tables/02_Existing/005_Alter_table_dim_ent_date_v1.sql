/* Add 4 new columns to the table dim_ent_date.  */

ALTER TABLE [dbo].[dim_ent_date]
ADD [week_start_date] [datetime] NULL;

ALTER TABLE [dbo].[dim_ent_date]
ADD [week_end_date] [datetime] NULL;

ALTER TABLE [dbo].[dim_ent_date]
ADD [month_start_date] [datetime] NULL;

ALTER TABLE [dbo].[dim_ent_date]
ADD [month_end_date] [datetime] NULL;

