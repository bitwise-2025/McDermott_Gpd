/****** Object:  Table [dbo].[generic_json_header]    Script Date: 1/11/2023 5:18:53 PM ******/
/*   This table is already sent by Bala and executed by Hari.
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[generic_json_header]
(
	[load_name] [varchar](240) NOT NULL,
	[load_description] [varchar](500) NOT NULL,
	[source_table_name] [varchar](500) NOT NULL,
	[target_view_name] [varchar](500) NOT NULL,
	[error_target_view_name] [varchar](500) NOT NULL,
	[error_column_not_configured] [varchar](1) NOT NULL,
	[active_flag] [varchar](1) NOT NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

*/


