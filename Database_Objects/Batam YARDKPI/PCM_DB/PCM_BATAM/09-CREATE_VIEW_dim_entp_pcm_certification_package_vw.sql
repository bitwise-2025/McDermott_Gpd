CREATE VIEW [dbo].[dim_entp_pcm_certification_package_vw]
AS Select * from dbo.dim_entp_pcm_certification_package
where Active=1 AND fab_code = 'BTY';
GO