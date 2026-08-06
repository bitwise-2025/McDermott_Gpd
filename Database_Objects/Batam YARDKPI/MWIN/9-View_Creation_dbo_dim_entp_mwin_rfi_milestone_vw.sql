/****** Object:  View [dbo].[dim_entp_mwin_rfi_milestone_vw]    Script Date: 5/27/2024 4:06:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_mwin_rfi_milestone_vw]
AS select * from dim_entp_mwin_rfi_milestone where active =1;
GO


