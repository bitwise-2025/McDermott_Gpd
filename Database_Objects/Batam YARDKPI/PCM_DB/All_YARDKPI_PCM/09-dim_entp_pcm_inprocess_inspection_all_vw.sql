SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_pcm_inprocess_inspection_all_vw]
AS Select * From dbo.dim_entp_pcm_inprocess_inspection Where active=1;
GO

