/****** Object:  Table [dbo].[dim_entp_yardkpi_intelex_audit]   Script Date: 11/23/2022 11:35:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER TABLE [dbo].[dim_entp_pcm_job_item]
ADD [contract_type] [varchar](3) NULL;
