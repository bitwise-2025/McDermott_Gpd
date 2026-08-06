CREATE SCHEMA [rpy]

GO

insert into sec_sa values('Payment Dashboard',1,'2025-02-25 00:00:00.000',NULL)

insert into plp_parameter (parameter_code,parameter_type_code,description,parameter_data_type,max_no_values,parameter_size,comment,active,touched_by,touched_dtm) values('number_of_days','PIPELINE','pl_invoice_header_ap_invoices_all','N',1,10,NULL,1,'aditya.anand2@mcdermott.com','2025-02-28')

