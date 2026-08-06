--MCPM Arithmetic flow error issue

delete from [dbo].[dim_entp_phase] where dim_entp_phase_nk in (641, 642, 643, 644) and phase_code='ZZZ';--28
delete from [dbo].[dim_entp_work_unit] where dim_entp_work_unit_nk in (700, 701, 702, 703) and work_unit_code='ZZZ';--28
delete from [dbo].[dim_entp_work_area] where dim_entp_work_area_nk in (917, 918, 919, 920) and work_area_code='ZZZ';--7000
delete from [dbo].[dim_entp_schedule_resource] where dim_entp_schedule_resource_nk in (27538, 27539, 27540, 27541) and schedule_resource_code='ZZZ';--28
delete from [dbo].[dim_entp_cwp] where dim_entp_cwp_nk in (8654, 8655, 8656, 8657) and cwp_code='ZZZ';--28


delete from [dbo].[dim_entp_activity] where dim_entp_activity_nk in (23755,23756,23757)
and activity_code ='ZZZ';--15753
delete from [dbo].[dim_entp_iwp] where dim_entp_iwp_nk in (463625,463626,463627)
and iwp_code ='ZZZ';--391137
delete from [dbo].dim_entp_pim where dim_entp_pim_nk in (12217118,12217119,12217120)
and pim_code ='ZZZ';--1954149
delete from [dbo].dim_entp_roc where dim_entp_roc_nk in (3493,3494,3495)
and roc_code ='ZZZ';--9