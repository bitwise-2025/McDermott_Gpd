--Include additional Alternative Function Name in dim_ent_function through update script
update [dbo].[dim_ent_function] set alternative_function_name = 'Others|6 - Other Project Costs|7 - Fringe & Overhead|9 - Admin|9 - TSF|Billings|Contingency|GP|Non Revenue Cost|Other|NULL' where function_code ='OTH';
update [dbo].[dim_ent_function] set alternative_function_name = 'Commissioning|5 - Commissioning/Start Up|HUC' where function_code ='CMN';
update [dbo].[dim_ent_function] set alternative_function_name = 'MAO' where function_code ='MAR';
update [dbo].[dim_ent_function] set alternative_function_name = 'PMT' where function_code ='PMC';
update [dbo].[dim_ent_function] set alternative_function_name = 'Supply Chain Management|2 - Procurement|SCM' where function_code ='SCM';

update [dbo].[dim_ent_function] set alternative_function_name = '4 - Construction' where function_code ='CON';
update [dbo].[dim_ent_function] set alternative_function_name = 'Engineering|1 - Home Office' where function_code ='ENG';
update [dbo].[dim_ent_function] set alternative_function_name = 'Fabrication|3 - Fabrication' where function_code ='FAB';

--QA does not have the alternative_function_name hence all the alternative functinname values ahve to be updated 


