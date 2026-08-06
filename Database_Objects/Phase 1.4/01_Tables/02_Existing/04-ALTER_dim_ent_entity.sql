--Alter dim_ent_entity to include a new column called office

ALTER TABLE dbo.dim_ent_entity 
ADD office VARCHAR(500) NULL;

GO