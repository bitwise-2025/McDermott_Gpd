CREATE VIEW [dbo].[dim_entp_pcm_Weld_details_v]
AS Select a.*,b.job,b.job_title,b.item,b.item_title,c.contract_number From dbo.dim_entp_pcm_Weld_details a left join dbo.dim_entp_pcm_job_item_vw b
on a.dim_entp_pcm_job_item_nk= b.dim_entp_pcm_job_item_nk
left join dbo.dim_ent_contract_active_v c on a.dim_ent_contract_nk=c.dim_ent_contract_nk
Where a.active=1 AND a.fab_code = 'BTY';
GO