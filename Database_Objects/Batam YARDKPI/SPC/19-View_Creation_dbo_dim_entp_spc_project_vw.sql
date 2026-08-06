/****** Object:  View [dbo].[dim_entp_spc_project_vw]    Script Date: 6/25/2024 1:41:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_spc_project_vw]
AS select * from dim_entp_spc_project where Active = 1;
GO


