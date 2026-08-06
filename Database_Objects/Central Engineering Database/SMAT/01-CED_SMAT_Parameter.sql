declare @dd datetime
select @dd = getdate()

--=========================================
--pl_ced_excel_roombook
--==========================================
delete from plp_pipeline where pipeline_code = 'pl_ced_smat_po_details'

insert into plp_pipeline 
select 'pl_ced_smat_po_details' as pipeline_code, description as subject_area_code, 'Central Engineering Database pipeline for SMAT' as description, null as comment, 1 as active, 'ajmal.usman@mcdermott.com' as touched_by, @dd as touched_dtm ,sec_sa_id from dbo.SEC_SA  where description = 'CED'
--------------------------------------------------
delete from plp_pipeline_parameter where pipeline_code = 'pl_ced_smat_po_details'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_ced_smat_po_details', 'SMAT', 'contract', 1,'contract','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

---------------------------------------------
delete from plp_parameter_value where pipeline_code = 'pl_ced_smat_po_details'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'contract', 'NL025', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_ced_smat_po_details','SMAT')

