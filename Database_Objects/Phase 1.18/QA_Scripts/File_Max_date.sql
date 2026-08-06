CREATE PROCEDURE dbo.File_max_Date
@tableName NVARCHAR(100)
AS
BEGIN
DECLARE @sql nvarchar(max)
DECLARE @date nvarchar(max)
SET @sql = N'SELECT Cast(max(RowValue) as Datetime) as RowValue FROM (SELECT [KEY] as [colName], value AS RowValue FROM ' + @tableName + N' CROSS APPLY OPENJSON(json_attribute)) a Where a.colName=''zCreatedDateTime'' group by  a.colName'
print @sql
EXECUTE sp_executesql @sql