/* Add new column 'Foreman_name' to the table dim_ent_employee.  */

ALTER TABLE [dbo].[dim_ent_employee]
ADD Foreman_name varchar(500) NULL;