/*Assuming the QA table dim_ent_date was imported to PROD with the name dim_ent_date_from_qa. */

-- < Wenfu has  already taken care of this step as of 08/19/2021> Step 1: Copy the QA table [dbo].[dim_ent_date] with its contents temporarily to PROD as [dbo].[dim_ent_date_from_qa]
 
-- Step 2: Run the following Query to update all new columns 

UPDATE [dbo].[dim_ent_date]
set week_start_date=B.week_start_date
,week_end_date=B.week_end_date
,month_start_date=B.month_start_date
,month_end_date=B.month_end_date
,year_start_date=B.year_start_date
,year_end_date=B.year_end_date
FROM [dbo].[dim_ent_date] A JOIN [dbo].[dim_ent_date_from_qa] B ON A.date_attribute=B.Date_attribute

GO