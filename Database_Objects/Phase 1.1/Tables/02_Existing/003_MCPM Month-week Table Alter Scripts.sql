---------MCPM


Alter table [gpd].[NCSA_MCPM_Onshore]
add [parent_rssk] INT NULL

Alter table [gpd].[reprocess_NCSA_MCPM_Onshore]
add [parent_rssk] INT NULL


---------Weekly

Alter table [gpd].[NCSA_MCPM_ProgressItems_Onshore]
add [parent_rssk] INT NULL

Alter table [gpd].[reprocess_NCSA_MCPM_ProgressItems_Onshore]
add [parent_rssk] INT NULL
