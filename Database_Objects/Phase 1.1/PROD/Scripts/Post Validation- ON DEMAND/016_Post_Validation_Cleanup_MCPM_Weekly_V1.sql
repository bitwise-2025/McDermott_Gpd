-- Cleanup Previous MCPM Weekly data so it does not conflict with new versions
--This has to be run as part of Post validation data-reload. The last 6 months data has to be reloaded for MCPM Monthy. To avoid conflict between old and  new data, the older data should be cleared from FACT table. 


--TO BE EXECUTED ONLY IF DEVELOPERS GIVE THE GO AHEAD

DELETE from DBO.FACT_OPS 
WHERE DIM_ENTP_PROJECT_NK = 161  --Project 99236910
AND dim_entp_sub_source_nk = '17' 
and dim_entp_data_sub_class_nk in (23,39,58,59,60,61) --39 Variance Earned Hours;23 Variance Earned Quantity,61 earned quantity wk,62 earned quantity hrs, 63 varaince actual amount,64 variance actual hrs
and Transaction_DATE in ('8/13/2022',
'8/6/2022',
'7/30/2022',
'7/23/2022',
'7/16/2022',
'7/9/2022',
'7/2/2022',
'6/25/2022',
'6/18/2022',
'6/11/2022',
'6/4/2022',
'5/28/2022',
'5/21/2022',
'5/14/2022',
'5/7/2022',
'4/30/2022',
'4/23/2022',
'4/16/2022',
'4/9/2022',
'4/2/2022',
'3/26/2022',
'3/19/2022',
'3/12/2022',
'3/5/2022',
'2/26/2022',
'2/19/2022',
'2/12/2022',
'2/5/2022'
)