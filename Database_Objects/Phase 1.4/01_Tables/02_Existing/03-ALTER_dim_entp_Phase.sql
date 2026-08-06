--Alter dim_entp_phase by increasing the length from 3 to 10
ALTER TABLE [dbo].[dim_entp_phase]
ALTER COLUMN [phase_code] [varchar](10) NOT NULL;

GO