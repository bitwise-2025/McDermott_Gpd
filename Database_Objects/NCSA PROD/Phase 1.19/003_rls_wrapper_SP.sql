/****** Object:  StoredProcedure [dbo].[generic_row_level_security_wrapper]    Script Date: 2/15/2024 2:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[generic_row_level_security_wrapper] AS
begin
    execute  [dbo].[generic_row_level_security] 'ePMR','dim_entp_project','dim_entp_project_nk','#tempuser' 
end;
GO