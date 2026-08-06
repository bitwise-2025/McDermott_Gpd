/****** Object:  StoredProcedure [dbo].[usp_fact_fss_businessline_updates_load]    Script Date: 2/1/2024 2:25:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_fact_fss_businessline_updates_load] @sheetname [varchar](100) AS
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
 
if @sheetname='19) WC by Comp by Proj'
       Begin
	   EXEC [dbo].[usp_fact_fss_wc_by_comp_by_proj_load]
 
	   end
 
if @sheetname='20) Indirect Cashflow'
       Begin
	   EXEC [dbo].[usp_fact_fss_Indirect_Cashflow_load]
 
	   end
 
if @sheetname='25) Loss Projects'
       Begin
	   EXEC [dbo].[usp_fact_fss_loss_projects_load]
 
	   end
if @sheetname='21) Direct Cashflow'
       Begin
	   EXEC [dbo].[usp_fact_fss_direct_cashflow_load]
 
	   end
if @sheetname='27) Actual EAC Changes'
       Begin
	   EXEC [dbo].[usp_fact_fss_Actual_EAC_Changes_load]
 
	   end
if @sheetname='22) UCO'
       Begin
	   EXEC [dbo].[usp_fact_fss_UCO_load]
 
	   end
 
if @sheetname='29) AR Aging'
       Begin
		EXEC [dbo].[usp_fact_fss_AR_Aging_load]
	   end
if @sheetname='30) Contracts WIP'
       Begin
		EXEC [dbo].[usp_fact_fss_Contract_WIP_load]
 
	   end
 
if @sheetname='26) GP Changes in Estimates'
       Begin
		EXEC [dbo].[usp_fact_fss_gp_changes_in_estimate_load]
 
	   end
 if @sheetname='9) Gross DOE Cash View'
       Begin
		EXEC [dbo].[usp_fact_fss_gross_doe_cash_view_load]
 
	   end
END

