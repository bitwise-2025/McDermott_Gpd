--This has to be run as part of Post validation data-reload. The last 6 months data has to be reloaded for MCPM Monthy. To avoid conflict between old and  new data, the older data should be cleared from FACT table. 

-- Cleanup Previous MCPM Monthly data so it does not conflict with new versions

DELETE from DBO.FACT_OPS 
WHERE DIM_ENTP_PROJECT_NK = 161  --Project 99236910
AND DIM_ENTP_SUB_SOURCE_NK=17
and dim_entp_data_sub_class_nk in (18,19,20,25,26,27,28,29,30,33,34,35,42,43,44,45,46,47,48,49,50,53,55,56,57)
and Transaction_DATE in ('2022-01-31','2022-02-28','2022-03-31','2022-04-30','2022-05-31','2022-06-30','2022-07-31')


