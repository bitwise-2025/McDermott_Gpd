/****** Object:  View [dbo].[fact_fss_businessline_updates_v ]    Script Date: 9/5/2023 5:17:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[fact_fss_businessline_updates_v ]
AS select * from
fact_fss_businessline_updates_v3
--where (fact_fss_businessline_update_v2_rn = 1 and fact_fss_businessline_update_v1_dr = 1 )
;
GO


