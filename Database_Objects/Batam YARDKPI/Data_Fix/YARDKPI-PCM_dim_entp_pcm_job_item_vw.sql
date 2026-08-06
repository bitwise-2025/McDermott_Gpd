DROP VIEW [dbo].[dim_entp_pcm_job_item_vw]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_pcm_job_item_vw]
AS Select * from dbo.dim_entp_pcm_job_item
where Active=1 AND fab_code = 'BTY';
GO


