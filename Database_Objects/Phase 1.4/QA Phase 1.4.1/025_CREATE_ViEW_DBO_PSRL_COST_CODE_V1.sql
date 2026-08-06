/****** Object:  View [dbo].[dim_ent_contract_active_v]    Script Date: 8/3/2022 2:40:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_psrlevel1_active_v]
AS select *
from [dbo].[dim_ent_psrlevel1]
where active = 1;
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_psrlevel2_active_v]
AS select *
from [dbo].[dim_ent_psrlevel2]
where active = 1;
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_costcode_active_v]
AS select *
from [dbo].[dim_entp_costcode]
where active = 1;
GO


