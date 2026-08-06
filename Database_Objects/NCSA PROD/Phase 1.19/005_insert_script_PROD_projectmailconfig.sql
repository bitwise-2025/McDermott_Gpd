IF OBJECT_ID('dbo.NCSA_project_config_emails', 'U') IS NOT NULL 
  DROP TABLE dbo.NCSA_project_config_emails; 
GO
/****** Object:  Table [dbo].[NCSA_project_config_emails]    Script Date: 4/2/2024 4:33:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCSA_project_config_emails]
(
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[project_number] [varchar](100) NOT NULL,
	[active] [int] NOT NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[email_id] [varchar](8000) NULL,
	[dim_entp_project_nk] [bigint] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

DECLARE @Date DATETIME;
SET @Date = GETDATE();

insert into [dbo].[NCSA_project_config_emails]([project_number],[active],[email_id],created_date_time,dim_entp_project_nk)
	values('99350106',1,'abhijit.kharat@mcdermott.com',@Date,7860)
insert into [dbo].[NCSA_project_config_emails]([project_number],[active],[email_id],created_date_time,dim_entp_project_nk)
	values('D7415',1,'abhijit.kharat@mcdermott.com',@Date,7384)
insert into [dbo].[NCSA_project_config_emails]([project_number],[active],[email_id],created_date_time,dim_entp_project_nk)
	values('99357972',1,'abhijit.kharat@mcdermott.com',@Date,5411)
insert into [dbo].[NCSA_project_config_emails]([project_number],[active],[email_id],created_date_time,dim_entp_project_nk)
	values('D7512',1,'abhijit.kharat@mcdermott.com',@Date,7445)