/****** Object:  View [dbo].[dim_entp_spc_jobno_vw]    Script Date: 6/25/2024 1:43:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_spc_jobno_vw]
AS select * from dim_entp_spc_jobno where Active = 1;
GO


