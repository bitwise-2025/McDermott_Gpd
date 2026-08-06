--Cleanup duplicate records in the DIM tables for dummmy entries

delete from [dbo].[dim_entp_phase] where dim_entp_phase_nk=112 and active=1 and dim_entp_phase_sk<>57

GO

delete from [dbo].[dim_entp_work_unit] where dim_entp_work_unit_nk=181 and active=1 and dim_entp_work_unit_sk <>775

GO
DELETE from [dbo].[dim_entp_work_area] where dim_entp_work_area_nk=194 and active=1 and dim_entp_work_area_sk <>835

GO
DELETE from [dbo].[dim_entp_schedule_resource] where dim_entp_schedule_resource_nk=13 and active =1 and dim_entp_schedule_resource_sk<>775

GO
DELETE from [dbo].[dim_entp_cwp] where dim_entp_cwp_nk=13 and active =1 and dim_entp_cwp_sk<>775

GO
DELETE from [dbo].[dim_entp_activity] where dim_entp_activity_nk=13 and active=1 and dim_entp_activity_sk<>775

GO
DELETE from [dbo].[dim_entp_iwp] where dim_entp_iwp_nk=14 and active=1 and dim_entp_iwp_sk<>775

GO
DELETE from [dbo].[dim_entp_pim] where dim_entp_pim_nk=13 and active=1 and dim_entp_pim_sk<>775

GO
DELETE from [dbo].[dim_entp_roc] where dim_entp_roc_nk=13 and active=1 and dim_entp_roc_sk<>775