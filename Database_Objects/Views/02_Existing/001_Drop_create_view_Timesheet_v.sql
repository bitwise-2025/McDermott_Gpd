DROP VIEW [dbo].[timesheet_v]
GO


/****** Object:  View [dbo].[timesheet_v]    Script Date: 11/10/2021 1:20:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[timesheet_v] AS 
Select enttime.fact_ent_time_sk
              , enttime.dim_ent_employee_nk
              , enttime.dim_ent_employee_sk
              , enttime.dim_ent_timesheet_date_sk
              --, enttime.dim_ent_timesheet_date_nk
              , coa.dim_ent_combined_coa_sk
              , coa.dim_ent_combined_coa_nk
              , enttime.dim_ent_contract_nk
              , enttime.dim_ent_contract_sk
              /*, coa.project
              , coa.projectname
              , coa.segment1_code as Company_Code
              , coa.segment1_description as Company_Name
              , coa.segment2_code as Contract
              , coa.segment2_description as Contract_Desc
              , coa.segment3_code as AreaUnit
              , coa.segment3_description as AreaUnit_Desc
              , coa.segment4_code as Costcode
              , coa.segment4_description as Costcode_Desc
              , coa.segment5_code as Costtype
              , coa.segment5_description as Costtype_Desc
              , coa.account_description
              , coa.dim_ent_combined_coa_sk
              */
                    ,case
                           when entsubsource.sub_source_name = 'KRONOS' 
                           then k.workpack1_code 
                           else
                           case when len(enttime.onshore_segment6) > 0 
                           then reverse(substring(reverse(enttime.onshore_segment6), 1+charindex('-', reverse(enttime.onshore_segment6)), len(enttime.onshore_segment6)))
                           else null
                           end
                    end as detail_job
                    ,case
                    when entsubsource.sub_source_name = 'KRONOS' then k.workpack1_description
                    else enttime.onshore_segment6_desc 
                     end as detail_job_description
              /*, coa.segment7_code
              , coa.segment7_description
              */
              , enttime.resource_type
                      , enttime.dim_ent_equipment_nk
                      , enttime.dim_ent_equipment_sk
                      , units
              , entsubsource.sub_source_name as ts_source_sub
              , 0 as sec_sa_rule_id
              , enttime.created_date_time 

              from fact_ent_time enttime
              INNER join dim_ent_sub_source entsubsource on (enttime.dim_ent_sub_source_sk = entsubsource.dim_ent_sub_source_sk)
              INNER join dim_ent_combined_coa coa on (coa.dim_ent_combined_coa_sk = enttime.dim_ent_combined_coa_sk)
              left outer join ta.dim_ent_time_coa_kronos_v k on (enttime.dim_ent_time_coa_kronos_sk = k.dim_ent_time_coa_kronos_sk)
              left outer join dim_ent_jde_coa j on (enttime.dim_ent_jde_coa_sk = j.dim_ent_jde_coa_sk);
GO


