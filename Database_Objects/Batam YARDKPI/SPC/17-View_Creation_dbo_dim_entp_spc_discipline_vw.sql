/****** Object:  View [dbo].[dim_entp_spc_discipline_vw]    Script Date: 6/25/2024 12:54:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_spc_discipline_vw]
AS select * from dim_entp_spc_discipline where Active = 1;
GO


