SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_pcm_job_item_all_vw] AS Select * from dbo.dim_entp_pcm_job_item
where Active=1;
GO
