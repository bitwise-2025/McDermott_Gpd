

--Step2] Alter views to add two new columns

ALTER VIEW [dbo].[dim_ent_global_phase_active_v]
AS select DISTINCT phase_code,phase_name,psrlevel1_code,psrlevel2_code from [dbo].[dim_ent_global_phase] where active=1;


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[dim_ent_global_phase_alternative_v]
AS select dim_ent_global_phase_sk,dim_ent_global_phase_nk,phase_code,phase_name,start_date,end_date,hash_code,late_arrival_flag,active,created_date_time,modified_date_time,psrlevel1_code,psrlevel2_code,
	value as alternative_phase_code from [dbo].[dim_ent_global_phase]
	CROSS APPLY STRING_SPLIT(phase_alternative, '|') where  isnull(trim(value),'') <> '' and active=1;
GO

--Step3] Insert record to the new columns

---UPDATE NCSA 1.4 created records per the new logic
update [dbo].[dim_ent_global_phase] 
set psrlevel1_code='1H',
psrlevel2_code='1H20'
where phase_name='Engineering'

update [dbo].[dim_ent_global_phase] 
set psrlevel1_code='4C',
psrlevel2_code='4C20'
where phase_name='Construction'


update [dbo].[dim_ent_global_phase] 
set psrlevel1_code='3F',
psrlevel2_code='3F20'
where phase_name='FABRICATION'


update [dbo].[dim_ent_global_phase] 
set psrlevel1_code='2P',
psrlevel2_code='2P20'
where phase_name='SCM'

update [dbo].[dim_ent_global_phase] 
set Phase_code='PR'
where phase_name='SCM'