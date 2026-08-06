SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
--DROP VIEW [dbo].[dim_entp_yardkpi_intelex_hours_worked_v]
CREATE VIEW [dbo].[dim_entp_yardkpi_intelex_hours_worked_v]
AS select 
	[dim_entp_yardkpi_intelex_hours_worked_sk],
	[dim_entp_yardkpi_intelex_hours_worked_nk],
	[start_date],
	[end_date],
	[hash_code],
	[active],
	[created_date_time],
	[modified_date_time],
	[late_arrival_flag],
	[dim_ent_source_nk],
	[dim_ent_sub_source_nk],
	[row_id],
	[Id],
	[Display_Field],
	[Location_Code],
	[Location],
	[Profile_No],
	[Vessel],
	[Other_Vessel],
	[Profile],
	[Profile_Area],
	[Profile_Type],
	[Business_Line],
	[Project_Number],
	[Project_Name],
	[Month_Date],
	[Month],
	[Year],
	[Employee_Hours],
	[Subcontractor_Hours],
	[Joint_Venture_Partner_Hours],
	[Subcontractor_Vessel_Hours],
	[Vessel_Hours_Helper],
	[Sub_Profile_Type]
	
from [dbo].[dim_entp_yardkpi_intelex_hours_worked] where active = 1;
GO

