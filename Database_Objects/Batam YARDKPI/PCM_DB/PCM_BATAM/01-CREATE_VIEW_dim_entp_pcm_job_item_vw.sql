CREATE VIEW [dbo].[dim_entp_pcm_job_item_vw]
AS Select * from dbo.dim_entp_pcm_job_item
where Active=1 AND fab_code = 'BTY';
GO