/****** Object:  View [dbo].[fact_ops_histogram_v]    Script Date: 10/13/2022 11:35:19 AM ******/
DROP VIEW [dbo].[fact_ops_histogram_v]
GO

/****** Object:  View [dbo].[fact_ops_histogram_v]    Script Date: 10/13/2022 11:35:19 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[fact_ops_histogram_v]
AS SELECT * FROM (
SELECT *
--dense_rank() over(partition by f.temp_hash_key, f.dim_entp_data_class_nk,  f.dim_entp_data_sub_class_nk, f.transaction_date order by f.created_date_time desc) dr,
--row_number() over(partition by f.temp_hash_key, f.dim_entp_data_class_nk, f.dim_entp_data_sub_class_nk, f.transaction_date order by f.created_date_time desc) rn
FROM 
(SELECT a.[dim_entp_phase_nk]
      ,a.[dim_entp_project_nk]
      ,a.[dim_ent_office_nk]
      ,a.[dim_ent_prime_nk]
      ,a.[dim_ent_sub_prime_nk]
      ,a.[dim_ent_subfunction_nk]
      ,a.[dim_entp_activity_nk]
      ,a.[dim_entp_data_sub_class_nk]
      ,a.[dim_entp_data_class_nk]
      ,a.[dim_entp_sub_source_nk]
      ,a.[dim_entp_source_nk]
	  ,a.[dim_ent_psrlevel1_nk]
      ,a.[dim_ent_psrlevel2_nk]
      ,a.[transaction_date]
      ,a.[transaction_quantity]
      ,a.[created_date_time]
	  ,(select REVERSE(PARSENAME(REPLACE(REVERSE(dsc1.data_sub_class_name), '_', '.'), 1)) AS [plan_type] FROM dim_ent_data_sub_class dsc1 WITH (NOLOCK) 
		where dsc1.dim_ent_data_sub_class_nk=a.dim_entp_data_sub_class_nk) plan_type
	 ,(select ISNULL(REVERSE(PARSENAME(REPLACE(REVERSE(dsc2.data_sub_class_name), '_', '.'), 2)),'0') AS [revision] FROM dim_ent_data_sub_class dsc2 WITH (NOLOCK) 
		where dsc2.dim_ent_data_sub_class_nk=a.dim_entp_data_sub_class_nk) revision
	  ,HASHBYTES('MD5',   concat(isnull(trim(str(a.dim_entp_phase_nk)), '~'),
									isnull(trim(str(a.dim_entp_project_nk)), '~'),
									isnull(trim(str(a.dim_ent_office_nk)), '~'),
									isnull(trim(str(a.dim_ent_prime_nk)), '~'),
									isnull(trim(str(a.dim_ent_sub_prime_nk)), '~'),
									isnull(trim(str(a.dim_ent_subfunction_nk)), '~'),
									isnull(trim(str(a.dim_entp_activity_nk)), '~'),
									isnull(trim(str(a.dim_entp_data_class_nk)), '~'),
									isnull(trim(str(a.dim_entp_data_sub_class_nk)), '~'),
									isnull(trim(str(a.dim_entp_sub_source_nk)), '~'),
									isnull(trim(str(a.dim_entp_source_nk)), '~'),
									isnull(trim(str(a.dim_ent_psrlevel1_nk)), '~'),
									isnull(trim(str(a.dim_ent_psrlevel2_nk)), '~')
									
									)) temp_hash_key
  FROM [dbo].[fact_ops_man_hour_histogram] a
  where a.dim_entp_sub_source_nk in (select dim_ent_sub_source_nk from [dbo].[dim_ent_sub_source] where sub_source_name in ('EXCEL'))
  )f   )h
  --where h.rn=1;
  --10/13/2022: replacement to the Rank function. Per discussion with Moses,Johnson. Get the latest data per Project,per Phase, Per Transaction_date.
   WHERE CONVERT(VARCHAR,h.dim_entp_phase_nk) + CONVERT(VARCHAR,h.dim_entp_project_nk)+CONVERT(VARCHAR,h.transaction_date)+CONVERT(VARCHAR,h.created_date_time) in 
  (
  SELECT CONVERT(VARCHAR,dim_entp_phase_nk )+CONVERT(VARCHAR,dim_entp_project_nk)+CONVERT(VARCHAR,transaction_date)+CONVERT(VARCHAR,MAX(created_date_time)) from [dbo].[fact_ops_man_hour_histogram] 
  GROUP BY dim_entp_phase_nk,dim_entp_project_nk, transaction_date
  )
  ;
GO


