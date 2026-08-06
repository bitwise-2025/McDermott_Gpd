
/****** Object:  UserDefinedFunction [dbo].[RemoveNonASCII]    Script Date: 11/3/2022 9:41:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[RemoveNonASCII] (@in_string [nvarchar](max)) RETURNS nvarchar(MAX)
AS
BEGIN
 
    DECLARE @Result nvarchar(MAX)
    SET @Result = ''
 
    DECLARE @character nvarchar(1)
    DECLARE @index int
 
    SET @index = 1
    WHILE @index <= LEN(@in_string)
    BEGIN
        SET @character = SUBSTRING(@in_string, @index, 1)
   
        IF (UNICODE(@character) between 32 and 127) or UNICODE(@character) in (10,11)
            SET @Result = @Result + @character
        SET @index = @index + 1
    END
 
    RETURN @Result
END
GO


