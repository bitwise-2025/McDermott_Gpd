--To be run to update the column short_month_name within dim_ent_date--

UPDATE [dbo].[dim_ent_date]
set short_month_name = UPPER(LEFT(Month_name,3))