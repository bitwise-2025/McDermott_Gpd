/* plp_parater_value table change */

/*
ALTER TABLE [dbo].[plp_parameter_value]
add pipeline_code varchar(120);
ALTER TABLE [dbo].[plp_parameter_value]
add pipeline_sub_code varchar(120);

*/

ALTER TABLE [dbo].[plp_parameter_value]
ALTER COLUMN [parameter_value] [varchar](5000) NULL;