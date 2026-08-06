

declare @network_id varchar(200);

set @network_id='vijaykumar.bn@mcdermott.com'

declare @sec_access_level varchar(200);

set @sec_access_level='Rule';

DECLARE @created_date_time DATETIME;

SET @created_date_time = GETDATE();

DECLARE @modified_date_time DATETIME;

SET @created_date_time = GETDATE();

 

insert into [dbo].[sec_user] 

(network_id,active,created_date_time,modified_date_time,sec_access_level)





DECLARE @created_date_time DATETIME;

SET @created_date_time = GETDATE();

DECLARE @modified_date_time DATETIME;

SET @created_date_time = GETDATE();

Declare @description varchar(200)

SET @description='NCSA Access By project'

insert into [dbo].[sec_sa_rule]

(description,rule_weightage,active,created_date_time,modified_date_time,sec_sa_id)

 

values (@description,'1','1',@created_date_time,@modified_date_time,47)

 

