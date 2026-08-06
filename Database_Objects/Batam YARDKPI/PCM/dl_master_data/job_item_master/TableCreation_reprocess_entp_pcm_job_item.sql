/****** Object:  Table [yardkpi].[reprocess_entp_pcm_job_item]    Script Date: 11/23/2022 11:29:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER TABLE [yardkpi].[reprocess_entp_pcm_job_item]
ADD [contract_type] [varchar](3) NULL;
