 CREATE VIEW [dbo].[fact_gmps_productivity_v1] AS 
select 
  dim_ent_source_nk, 
  dim_ent_sub_source_nk, 
  dim_entp_gmps_productivity_nk, 
  dim_entp_gmps_sp_area_nk, 
  dim_entp_gmps_sp_area_nk_actual, 
  cyear, 
  cmonth, 
  cutoff, 
  case when isnumeric(actual) = 1 then convert(money, actual) else 0 end as actual  ,
  case when isnumeric(earned) = 1 then convert(money, earned) else 0 end as earned  ,
  create_date_time, 
  HASHBYTES(
    'MD5', 
    concat(
      isnull(
        trim(
          str(dim_ent_source_nk)
        ), 
        '~'
      ), 
      isnull(
        trim(
          str(dim_ent_sub_source_nk)
        ), 
        '~'
      ), 
      isnull(
        trim(
          str(dim_entp_gmps_productivity_nk)
        ), 
        '~'
      ), 
      isnull(
        trim(
          str(dim_entp_gmps_sp_area_nk)
        ), 
        '~'
      ), 
      isnull(
        trim(
          str(
            dim_entp_gmps_sp_area_nk_actual
          )
        ), 
        '~'
      )
    )
  ) temp_hash_key 
from 
  [dbo].[fact_gmps_productivity] 
  
 CREATE VIEW [dbo].[fact_gmps_productivity_v2] AS 
select 
  dim_ent_source_nk, 
  dim_ent_sub_source_nk, 
  dim_entp_gmps_productivity_nk, 
  dim_entp_gmps_sp_area_nk, 
  dim_entp_gmps_sp_area_nk_actual, 
  cyear, 
  cmonth, 
  cutoff, 
  actual, 
  earned, 
  create_date_time, 
  temp_hash_key, 
  dense_rank() over(
    partition by temp_hash_key, 
    cutoff 
    order by 
      create_date_time desc
  ) as fact_gmps_productivity_v1_dr 
from 
  [dbo].[fact_gmps_productivity_v1];

 CREATE VIEW [dbo].[fact_gmps_productivity_v3] AS 
select 
  dim_ent_source_nk, 
  dim_ent_sub_source_nk, 
  dim_entp_gmps_productivity_nk, 
  dim_entp_gmps_sp_area_nk, 
  dim_entp_gmps_sp_area_nk_actual, 
  cyear, 
  cmonth, 
  cutoff, 
  actual, 
  earned, 
  create_date_time, 
  temp_hash_key, 
  fact_gmps_productivity_v1_dr, 
  row_number() over(
    partition by temp_hash_key, 
    dim_ent_source_nk, 
    dim_ent_sub_source_nk, 
    cutoff 
    order by 
      create_date_time desc
  ) as fact_gmps_productivity_v2_rn 
from 
  fact_gmps_productivity_v2;

 CREATE VIEW [dbo].[fact_gmps_productivity_v ] AS 
select 
  * 
from 
  fact_gmps_productivity_v3 
where 
  (
    fact_gmps_productivity_v2_rn = 1 
    and fact_gmps_productivity_v1_dr = 1
  );
GO
