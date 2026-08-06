CREATE VIEW [dbo].[dim_entp_pcm_inprocess_inspection_vw] 
AS Select * From dbo.dim_entp_pcm_inprocess_inspection Where active=1 and fab_code='BTY';
GO