SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
--DROP VIEW [dbo].[dim_entp_pcm_welder_information_all_v]

CREATE VIEW [dbo].[dim_entp_pcm_welder_information_all_v]
AS select *
from [dbo].[dim_entp_pcm_welder_information] where active = 1;
GO
