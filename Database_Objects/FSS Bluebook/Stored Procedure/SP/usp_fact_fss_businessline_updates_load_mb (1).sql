/****** Object:  StoredProcedure [dbo].[usp_fact_fss_businessline_updates_load_mb]    Script Date: 12/1/2023 7:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[usp_fact_fss_businessline_updates_load_mb] @sheetname [varchar](100) AS
BEGIN


   DECLARE  @Errormessage varchar(max)
   DECLARE  @datetimekey datetime

  if @sheetname='7) Revenue'
	Begin
		
		EXEC [usp_fact_fss_Revenue_MB_load]

	end

	if @sheetname='4) P&L'
       Begin
	  
	  EXEC [usp_fact_fss_PnL_MB_load]

end
if @sheetname='6) New Orders'
	Begin
		
		EXEC [usp_fact_fss_NewOrders_MB_load]

	end

if @sheetname='8) Gross Profit'
	Begin
		
		EXEC [usp_fact_fss_GrossProfit_MB_load]
end

if @sheetname='17) CapEx & DD'
	Begin

	EXEC [usp_fact_fss_Capex&DD_MB_load]
	
	end


end
