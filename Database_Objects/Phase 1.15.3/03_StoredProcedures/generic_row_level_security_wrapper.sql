/****** Object:  StoredProcedure [dbo].[generic_row_level_security]    Script Date: 8/23/2023 1:15:45 PM ******/

SET ANSI_NULLS ON

GO

 

SET QUOTED_IDENTIFIER ON

GO

 

Create PROC [dbo].[generic_row_level_security_wrapper]  AS

 

begin

    execute  [dbo].[generic_row_level_security] 'NCSA','dim_entp_project','dim_entp_project_nk','#tempuser' 

end;


GO