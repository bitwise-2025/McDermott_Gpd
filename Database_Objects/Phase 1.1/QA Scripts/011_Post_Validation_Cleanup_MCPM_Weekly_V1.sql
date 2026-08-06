-- Cleanup Previous MCPM Weekly data so it does not conflict with new versions


DELETE from DBO.FACT_OPS 
WHERE DIM_ENTP_PROJECT_NK = 142  --Project 99236910
AND dim_entp_sub_source_nk = '17' 
and dim_entp_data_sub_class_nk in (23,39,61,62,63,64) --39 Variance Earned Hours;23 Variance Earned Quantity,61 earned quantity wk,62 earned quantity hrs, 63 varaince actual amount,64 variance actual hrs
and Transaction_DATE in ('9/4/2021',
'8/28/2021',
'8/21/2021',
'8/14/2021',
'8/7/2021',
'7/31/2021',
'7/24/2021',
'7/17/2021',
'7/10/2021',
'7/3/2021',
'6/26/2021',
'6/19/2021',
'6/12/2021',
'6/5/2021')
--660274