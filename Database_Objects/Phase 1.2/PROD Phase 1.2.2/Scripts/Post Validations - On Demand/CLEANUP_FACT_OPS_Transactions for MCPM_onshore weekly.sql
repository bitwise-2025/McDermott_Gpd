/*select * from 
DBO.FACT_OPS
WHERE dim_entp_data_sub_class_nk in (select dim_ent_data_sub_class_nk from dim_ent_data_sub_class where active=1 and data_sub_class_name in ('Earned Quantity Wk','Earned Hours Wk','Variance Earned Quantity','Variance Earned Hours','Variance Actual Hours','Variance Actual Amount'))
and dim_entp_sub_source_nk in ( select dim_ent_sub_source_nk from dim_ent_sub_source where sub_source_name='MCPM Onshore')
and transaction_date>='2022-01-01'*/


DELETE from 
DBO.FACT_OPS
WHERE dim_entp_data_sub_class_nk in (select dim_ent_data_sub_class_nk from dim_ent_data_sub_class where active=1 and data_sub_class_name in ('Earned Quantity Wk','Earned Hours Wk','Variance Earned Quantity','Variance Earned Hours','Variance Actual Hours','Variance Actual Amount'))
and dim_entp_sub_source_nk in ( select dim_ent_sub_source_nk from dim_ent_sub_source where sub_source_name='MCPM Onshore')
and transaction_date>='2022-05-01'