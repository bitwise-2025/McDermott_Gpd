drop table [epr].[MR_Details_Ruya11_D7507]
drop table [epr].[MTO_SPMAT_Electrical_and_instrument_Ruya11_D7507]
drop table [epr].[MTO_SPMAT_Mechanical_Ruya11_D7507]
drop table [epr].[MTO_SPMAT_Piping_Ruya11_D7507]
drop table [epr].[MTO_SPMAT_Structural_Ruya11_D7507]
drop table [epr].[MTO_SPMAT_Subsea_Ruya11_D7507]
drop table [epr].[P10_MDR_Data_Ruya11_D7507]
drop table [epr].[Payment_Milestone_Ruya11_D7507]
drop table [epr].[Planning_Milestone_Ruya11_D7507]
drop table [epr].[PO_PR_Details_Ruya11_D7507]
drop table [epr].[PPE_Extract_Ruya11_D7507]
drop table [epr].[requisition_by_line_Ruya11_D7507]
drop table [epr].[Vendor_Progress_Ruya11_D7507]
drop view [epr].[MTO_SPMAT_All_Ruya11_D7507_v]
drop table [epr].[Milestone_weight_Ruya11_D7507]


update plp_parameter_value 
set parameter_value='Deliverable not in P10.xlsx' where parameter_value='Deliverable*.xlsx' and parameter_code='file_name' and pipeline_code='pl_MDR_Deliverable_Not_In_P10_Ruya11_D7507'

update plp_parameter_value
set parameter_value='ROC.xlsx' where parameter_value='ROC*.xlsx' and parameter_code='file_name' and pipeline_code='pl_ROC_Ruya11_D7507'

update plp_parameter_value
set parameter_value='P10 - MDR DATA EXPOR.CSV' where parameter_code='file_name' and pipeline_code ='pl_MDR_Data_Ruya11_D7507'

