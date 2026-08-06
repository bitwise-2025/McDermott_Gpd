/****** Object:  View [gpd].[NCSA_MCPM_UOM_v]    Script Date: 10/12/2021 12:18:43 AM ******/
IF	OBJECT_ID('[gpd].[NCSA_MCPM_UOM_v]','V') IS NOT NULL
DROP VIEW [gpd].[NCSA_MCPM_UOM_v]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[NCSA_MCPM_UOM_v]
AS SELECT
ROW_NUMBER() OVER(order by (select 0) ) as stage_ncsa_mcpm_uom_id,
ISNULL(MP.Code,SP.Code) as [UOMCode],
ISNULL(MP.Description,SP.Description) as [Description]
from gpd.NCSA_uom_MCPM MP
FULL OUTER JOIN (
SELECT keyuomimperial AS Code,keyuomimperial AS Description FROM gpd.ncsa_prime
union 
SELECT keyuommetric AS Code,keyuommetric AS Description FROM gpd.ncsa_prime) SP ON MP.Code=SP.Code;
GO







