/****** Object:  View [gpd].[NCSA_MCPM_Phases_v]    Script Date: 11/22/2021 10:45:25 PM ******/

IF	OBJECT_ID('[gpd].[NCSA_MCPM_Phases_v]','V') IS NOT NULL
DROP VIEW [gpd].[NCSA_MCPM_Phases_v]
GO

/****** Object:  View [gpd].[NCSA_MCPM_Phases_v]    Script Date: 11/22/2021 10:45:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[NCSA_MCPM_Phases_v]
AS SELECT
ROW_NUMBER() OVER(order by (select 0) ) as stage_ncsa_phase_id,
ISNULL(MP.Code,SP.Code) as Code,
ISNULL(MP.Description,SP.Description) as Description,
ISNULL(MP.project_id,SP.project_id) as project_id
from gpd.NCSA_Phases_MCPM MP
FULL OUTER JOIN gpd.NCSA_Phases SP ON (MP.Code=SP.Code AND MP.project_id=SP.project_id);
GO

IF	OBJECT_ID('[gpd].[NCSA_Unit_combined_v]','V') IS NOT NULL
DROP VIEW [gpd].[NCSA_Unit_combined_v]
GO

/****** Object:  View [gpd].[NCSA_Unit_combined_v]    Script Date: 11/23/2021 12:56:35 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[NCSA_Unit_combined_v]
AS SELECT 
 ROW_NUMBER() OVER(order by (select 0) ) as stage_ncsa_unit_id,
ISNULL(UM.code,USR.code) as code,
ISNULL(UM.description,USR.description) as description,
ISNULL(UM.project_id,USR.project_id) as project_id
--,UM.description,USR.description --just showcasing missing values from each table is compensated by other.
from gpd.NCSA_Unit_MCPM UM
FULL OUTER JOIN gpd.NCSA_Unit USR ON (UM.Code=USR.Code and UM.project_id=USR.project_id);
GO
/****** Object:  View [gpd].[NCSA_WorkArea_combined_v]    Script Date: 11/22/2021 5:43:06 AM ******/
IF	OBJECT_ID('[gpd].[NCSA_WorkArea_combined_v]','V') IS NOT NULL
DROP VIEW [gpd].[NCSA_WorkArea_combined_v]
GO

/****** Object:  View [gpd].[NCSA_WorkArea_combined_v]    Script Date: 11/22/2021 5:43:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[NCSA_WorkArea_combined_v]
AS SELECT 
 ROW_NUMBER() OVER(order by (select 0) ) as stage_ncsa_workarea_id,
ISNULL(WAM.code,WAS.code) as code,
ISNULL(WAM.description,WAS.description) as description,
ISNULL(WAM.UnitID,WAS.UnitID) as UnitID,
ISNULL(ISNULL(ISNULL(WAS.PhaseID,WAM.PhaseID),DP.phase_code),'ZZZ') as PhaseID,
ISNULL(WAM.project_id,WAS.project_id) as project_id
--,WAM.description,WAS.description --just showcasing missing values from each table is compensated by other.
from gpd.NCSA_WorkArea_MCPM WAM
FULL OUTER JOIN gpd.NCSA_WorkArea WAS ON WAM.Code=WAS.Code and WAM.project_id=WAS.project_id
LEFT OUTER JOIN dbo.DIM_ENTP_WORK_AREA DW ON WAM.CODE=DW.WORK_AREA_CODE AND DW.project_number=WAM.project_id AND DW.ACTIVE=1
LEFT JOIN DBO.DIM_ENTP_PHASE DP ON DW.DIM_ENTP_PHASE_NK=DP.DIM_ENTP_PHASE_NK and DP.project_number=WAM.project_id AND DP.ACTIVE=1;
GO

