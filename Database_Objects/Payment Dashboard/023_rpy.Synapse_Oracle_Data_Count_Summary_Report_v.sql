/****** Object:  View [rpy].[Synapse_Oracle_Data_Count_Summary_Report_v]    Script Date: 12/4/2025 1:22:03 PM ******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [rpy].[Synapse_Oracle_Data_Count_Summary_Report_v]
AS Select i.LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Invoice_header_ap_invoices_all' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Invoice_header_ap_invoices_all_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)


union all


Select i.LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Invoice_line_ap_invoice_lines_all' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Invoice_line_ap_invoice_lines_all_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)


union all


Select i.LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Invoice_distributions_ap_invoice_distributions_all' as TableName, 'Azure' as [Source],
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From [rpy].[Invoice_distributions_ap_invoice_distributions_all_v] i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)


union all


Select i.LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Gl_code_combinations' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Gl_code_combinations_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)

union all


Select i.LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Invoice_payment_schedules' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Invoice_payment_schedules_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)

union all


Select i.LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Hr_all_organization_units' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Hr_all_organization_units_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)

union all


Select i.LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Invoice_status' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Invoice_status_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)

union all


Select i.LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Projects_Data' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Projects_Data_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)

union all


Select i.LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Project_Elements_Data' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Project_Elements_Data_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)

union all


Select i.LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Supplier_Data' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Supplier_Data_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)

union all


Select i.LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Supplier_Site_Data' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Supplier_Site_Data_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)

union all


Select i.LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Invoice_Payments' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Invoice_Payments_final_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)

union all


Select i.LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Payment_Details' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Payment_Details_final_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)

union all


Select i.LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Payment_History' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Payment_History_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)

union all


Select i.LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Prepayment_Application_Distribution' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Prepayment_Application_Distribution_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)

union all


Select i.LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Prepayment_History' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Prepayment_History_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)

union all


Select i.LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Expenditure_Types' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Expenditure_Types_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)

union all


Select FORMAT(CAST(i.LAST_UPDATE_DATE AS datetime2(3)), 'yyyy-MM-dd HH:mm:ss.fff'), i.created_date_time as [Refresh Run Date], 'Dashboard_Data_Security' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Dashboard_Data_Security_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)

union all


Select FORMAT(CAST(i.LAST_UPDATE_DATE AS datetime2(3)), 'yyyy-MM-dd HH:mm:ss.fff'), i.created_date_time as [Refresh Run Date], 'Exchange_Rates_Data' as TableName, 'Azure' as [Source], 
Year(i.LAST_UPDATE_DATE) As [Year], Month(i.LAST_UPDATE_DATE) as [Month], Day(i.LAST_UPDATE_DATE) as [Day], COUNT(*) as Count
From rpy.Exchange_Rates_Data_v i 
Group By i.LAST_UPDATE_DATE, i.created_date_time, Month(i.LAST_UPDATE_DATE), Year(i.LAST_UPDATE_DATE), Day(i.LAST_UPDATE_DATE)

union all

Select i.EVENT_DATE as LAST_UPDATE_DATE, i.created_date_time as [Refresh Run Date], 'Payment_Accounting_Data' as TableName, 'Azure' as [Source], Year(i.EVENT_DATE) As [Year], Month(i.EVENT_DATE) as [Month], Day(i.EVENT_DATE) as [Day], COUNT(*) as Count
From [rpy].[Payment_Accounting_Data_v] i 
Group By i.EVENT_DATE, i.created_date_time, Month(i.EVENT_DATE), Year(i.EVENT_DATE), Day(i.EVENT_DATE);
GO


