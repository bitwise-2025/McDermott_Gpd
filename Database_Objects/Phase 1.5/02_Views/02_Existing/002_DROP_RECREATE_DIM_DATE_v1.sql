/****** Object:  View [dbo].[dim_date_v]    Script Date: 5/25/2022 2:03:39 AM ******/
IF	OBJECT_ID('[dbo].[dim_date_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_date_v]
GO


/****** Object:  View [dbo].[dim_date_v]    Script Date: 5/31/2022 4:33:27 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_date_v]
AS select	[dbo].[dim_ent_date].*, 
			case when 
						day(standard_date) = day(getdate()) 
					and month(standard_date) = month(getdate())
					and year(standard_date) = year(getdate()) 
			then '1' else '0' end  current_day_flag,
			case when 
						month(standard_date) = month(getdate())
					and year(standard_date) = year(getdate()) 
			then '1' else '0' end  current_month_flag,
			case when 
						year(standard_date) = year(getdate()) 
			then '1' else '0' end  current_year_flag,
			case when 
						year(standard_date) = year(getdate()) 
				  and  quarter_attribute = (select quarter_attribute from  dim_ent_date a where a.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_quarter_flag,
			case	when year(standard_date) = year(getdate()) 
					and month(standard_date) = month(getdate()) 
					and  week_of_month = (select week_of_month from  dim_ent_date a where a.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_week_flag,
			case when	year(standard_date) = year(getdate()) 
					and month(standard_date) = month(getdate()) 
					and  week1_of_month = (select week1_of_month from  dim_ent_date b where b.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_week_flag1,
			case when	year(standard_date) = year(getdate()) 
					and month(standard_date) = month(getdate()) 
					and  week2_of_month = (select week2_of_month from  dim_ent_date b where b.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_week_flag2,
			case when	year(standard_date) = year(getdate()) 
					and month(standard_date) = month(getdate()) 
					and  week3_of_month = (select week3_of_month from  dim_ent_date b where b.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_week_flag3,
			case when	year(standard_date) = year(getdate()) 
					and month(standard_date) = month(getdate()) 
					and  week4_of_month = (select week4_of_month from  dim_ent_date b where b.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_week_flag4,
			case when	year(standard_date) = year(getdate()) 
					and month(standard_date) = month(getdate()) 
					and  week5_of_month = (select week5_of_month from  dim_ent_date b where b.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_week_flag5,
			case when	year(standard_date) = year(getdate()) 
					and month(standard_date) = month(getdate()) 
					and  week6_of_month = (select week6_of_month from  dim_ent_date b where b.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_week_flag6,
			case when	year(standard_date) = year(getdate()) 
					and month(standard_date) = month(getdate()) 
					and  week7_of_month = (select week7_of_month from  dim_ent_date b where b.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_week_flag7,
			datediff(week,getdate(),week_start_date) week_offset,
			datediff(month,getdate(),month_start_date) month_offset,
			datediff(year,getdate(),year_start_date) year_offset,
			datediff(week,getdate(),week_start_date2) week_offset2,
			datediff(week,getdate(), week_1_start_sunday) week_offset_1_sunday,
			datediff(week,getdate(), week_2_start_monday) week_offset_2_monday,
			datediff(week,getdate(), week_3_start_tuesday) week_offset_3_tuesday,
			datediff(week,getdate(), week_4_start_wednesday) week_offset_4_wednesday,
			datediff(week,getdate(), week_5_start_thursday) week_offset_5_thursday,
			datediff(week,getdate(), week_6_start_friday) week_offset_6_friday,
			datediff(week,getdate(), week_7_start_saturday) week_offset_7_saturday,
case when year_attribute = year(dateadd(month,-1,(case when day(getdate()) <= 15 then dateadd(day,day(getdate()) * -1,getdate()) else getdate() end))) and quarter_attribute = 
(select quarter_attribute from  dim_ent_date a where a.standard_date = convert(date,   dateadd(month,-1,(case when day(getdate()) <= 15 then dateadd(day,day(getdate()) * -1,getdate()) else getdate() end))   )  ) then  '1' else '0' end  current_quarter_flag_based_on_last_Month
from [dbo].[dim_ent_date];
GO


