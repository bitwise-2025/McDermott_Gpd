/****** Object:  StoredProcedure [dbo].[usp_fact_fss_businessline_updates_load]    Script Date: 11/24/2023 5:30:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create PROC [dbo].[usp_fact_fss_businessline_updates_load] @sheetname [varchar](100) AS
BEGIN



 
 if @sheetname='2) New Orders'
	Begin
		EXEC [usp_fact_fss_neworders_load]
end

 
 
 if @sheetname='14) Revenue'
	
        Begin

		EXEC [usp_fact_fss_revenue_load]
end

 if @sheetname='15) Gross Profit'
 Begin

 EXEC [usp_fact_fss_grossprofit_load]

end

       
if @sheetname='4) P&L'
       Begin
	  EXEC [usp_fact_fss_pnl_load]

end



if @sheetname='5) P&L YTD'
       Begin
		
		EXEC [usp_fact_fss_pnlytd_load]
end

if @sheetname='10) Gross DOE Changes'
       Begin

	   EXEC [usp_fact_fss_grossdoechanges_load]
	  
end

if @sheetname='24) Backlog Revenue Rolloff'
       Begin
		
		EXEC [usp_fact_fss_backlogrevenuerolloff_load]
end

if @sheetname='28) CapEx & DD'
	Begin
		
		EXEC [usp_fact_fss_capex&dd_load]
 end

 if @sheetname='8) DOE Breakdown'
	Begin
		
		EXEC [usp_fact_fss_doebreakdown_load]
end

 if @sheetname='17) Functional Support Cost'
	Begin
		
		EXEC [usp_fact_fss_functionalsupportcost_load]
 end

 if @sheetname='3) Project EACs'
       Begin
		
		EXEC [usp_fact_fss_projecteac_load]

end

if @sheetname='6) CI, R&O'
       Begin
	   
	   EXEC [usp_fact_fss_CI_RO_load]

	   end

if @sheetname='11) Activity by proj.'
       Begin
	   
	   EXEC [dbo].[usp_fact_fss_Activity_by_Project_load]

	   end

if @sheetname='12) PED & ENG HC'
       Begin
	   
	   EXEC [dbo].[usp_fact_fss_Ped_Hc_load]
	   EXEC [dbo].[usp_fact_fss_Eng_Hc_load]

	   end

END
GO


