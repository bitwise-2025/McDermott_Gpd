--Correction Sccript for the failure in PROD.


ALTER TABLE [gpd].[NCSA_WorkArea_MCPM]
ALTER COLUMN [UnitID]  [varchar](5) NULL


--[gpd].[reprocess_dim_ops_work_area]


ALTER TABLE [gpd].[reprocess_dim_ops_work_area]
ALTER COLUMN [UnitID] [varchar](5) NULL