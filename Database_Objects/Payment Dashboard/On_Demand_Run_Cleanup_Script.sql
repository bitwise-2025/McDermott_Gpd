update plp_parameter_value
set parameter_value='2017-07-01 00:00:01'
where parameter_code='start_date' and pipeline_code in 
('pl_expenditure_types'
,'pl_gl_code_combinations'
,'pl_hr_all_organization_units'
,'pl_invoice_distributions_ap_invoice_distributions_all'
,'pl_invoice_header_ap_invoices_all'
,'pl_invoice_line_ap_invoice_lines_all'
,'pl_invoice_payment_schedules'
,'pl_invoice_payments'
,'pl_invoice_status'
,'pl_payment_details'
,'pl_payment_history'
,'pl_prepayment_application_distribution'
,'pl_prepayment_history'
,'pl_project_elements_data'
,'pl_projects_data'
,'pl_supplier_data'
,'pl_supplier_site_data'
)

GO

update plp_parameter_value
set parameter_value='currdate'
where parameter_code='end_date' and pipeline_code in 
('pl_expenditure_types'
,'pl_gl_code_combinations'
,'pl_hr_all_organization_units'
,'pl_invoice_distributions_ap_invoice_distributions_all'
,'pl_invoice_header_ap_invoices_all'
,'pl_invoice_line_ap_invoice_lines_all'
,'pl_invoice_payment_schedules'
,'pl_invoice_payments'
,'pl_invoice_status'
,'pl_payment_details'
,'pl_payment_history'
,'pl_prepayment_application_distribution'
,'pl_prepayment_history'
,'pl_project_elements_data'
,'pl_projects_data'
,'pl_supplier_data'
,'pl_supplier_site_data'
)


GO


truncate table [rpy].[Invoice_header_ap_invoices_all_stage]
truncate table [rpy].[Invoice_header_ap_invoices_all]
truncate table [rpy].[Invoice_line_ap_invoice_lines_all_stage]
truncate table [rpy].[Invoice_line_ap_invoice_lines_all]
truncate table [rpy].[Invoice_distributions_ap_invoice_distributions_all_stage]
truncate table [rpy].[Invoice_distributions_ap_invoice_distributions_all]
truncate table [rpy].[Gl_code_combinations_stage]
truncate table [rpy].[Gl_code_combinations]
truncate table [rpy].[Hr_all_organization_units_stage]
truncate table [rpy].[Hr_all_organization_units]
truncate table [rpy].[Invoice_status_stage]
truncate table [rpy].[Invoice_status]
truncate table [rpy].[Projects_Data_stage]
truncate table [rpy].[Projects_Data]
truncate table [rpy].[Supplier_Data_stage]
truncate table [rpy].[Supplier_Data]
truncate table [rpy].[Supplier_Site_Data_stage]
truncate table [rpy].[Supplier_Site_Data]
truncate table [rpy].[Invoice_payment_schedules_stage]
truncate table [rpy].[Invoice_payment_schedules]
truncate table [rpy].[Invoice_Payments_stage]
truncate table [rpy].[Invoice_Payments]
truncate table [rpy].[Payment_Details_stage]
truncate table [rpy].[Payment_Details]
truncate table [rpy].[Payment_History_stage]
truncate table [rpy].[Payment_History]
truncate table [rpy].[Prepayment_Application_Distribution_stage]
truncate table [rpy].[Prepayment_Application_Distribution]
truncate table [rpy].[Prepayment_History_stage]
truncate table [rpy].[Prepayment_History]
truncate table [rpy].[Project_Elements_Data_stage]
truncate table [rpy].[Project_Elements_Data]
truncate table [rpy].[Expenditure_Types_stage]
truncate table [rpy].[Expenditure_Types]


