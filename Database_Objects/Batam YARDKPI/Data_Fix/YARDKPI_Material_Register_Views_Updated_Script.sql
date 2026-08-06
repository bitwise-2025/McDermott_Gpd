--STEP-1: EXECUTE THE BELOW QUERY
DROP VIEW [dbo].[dim_entp_yardkpi_material_issuing_register_vw]

--STEP-2: EXECUTE THE BELOW QUERY
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_yardkpi_material_issuing_register_vw]
AS select * from dim_entp_yardkpi_material_issuing_register where active =1;
GO
----------------------------------------------------------------------------

--STEP-3: EXECUTE THE BELOW QUERY
DROP VIEW [dbo].[dim_entp_yardkpi_material_osnd_register_vw]

--STEP-4: EXECUTE THE BELOW QUERY
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_yardkpi_material_osnd_register_vw]
AS select * from dim_entp_yardkpi_material_osnd_register where active =1;
GO
--------------------------------------------------------------------------

--STEP-5: EXECUTE THE BELOW QUERY
DROP VIEW [dbo].[dim_entp_yardkpi_material_Receiving_register_vw]

--STEP-6: EXECUTE THE BELOW QUERY
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_yardkpi_material_Receiving_register_vw]
AS select * from dim_entp_yardkpi_material_Receiving_register where active =1;
GO
------------------------------------------------------------------------------

--STEP-7: EXECUTE THE BELOW QUERY
DROP VIEW [yardkpi].[stage_material_issuing_register_vw]

--STEP-8: EXECUTE THE BELOW QUERY
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [yardkpi].[stage_material_issuing_register_vw]
AS select
R.Project_NO AS PROJECT_ID, R.* FROM yardkpi.stage_material_issuing_register R;
GO
-------------------------------------------------------------------------------
--STEP-9: EXECUTE THE BELOW QUERY
DROP VIEW [yardkpi].[stage_material_osnd_register_vw]

--STEP-10: EXECUTE THE BELOW QUERY
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [yardkpi].[stage_material_osnd_register_vw]
AS select
R.Project_NO AS PROJECT_ID, R.* FROM yardkpi.stage_material_osnd_register R;
GO
----------------------------------------------------------------------------
--STEP-11: EXECUTE THE BELOW QUERY
DROP VIEW [yardkpi].[stage_material_receiving_register_vw]

--STEP-12: EXECUTE THE BELOW QUERY
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [yardkpi].[stage_material_receiving_register_vw]
AS select
P.Project_NO AS PROJECT_ID, R.* FROM yardkpi.stage_material_Receiving_register R
LEFT OUTER JOIN yardkpi.stage_project_no P
ON R.PROJECT_NO  = P.PROJECT_NO;
GO
---------------------------------------------------------------------------------