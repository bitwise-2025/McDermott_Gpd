SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[NCSA_CoA_MCPM_CostCode_v]
AS SELECT  max(rssk) as rssk, Domain,costcode,MAX(Costcode_title) as Costcode_Title FROM [gpd].[NCSA_CoA_PSR_MCPM] group by Domain,costcode;
-- 07/28/2022 Satish: Initial version to load distinct costcode from MCPM to dIM table. 
GO
