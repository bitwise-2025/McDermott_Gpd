CREATE VIEW [dbo].[dim_entp_pcm_paint_detail_vw]
AS Select * from dbo.dim_entp_pcm_paint_detail
where Active=1 AND fab_code = 'BTY';
GO