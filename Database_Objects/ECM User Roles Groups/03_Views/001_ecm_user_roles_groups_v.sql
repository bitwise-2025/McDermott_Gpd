CREATE VIEW [gpd].[ecm_user_roles_groups_v]
AS SELECT 

[username] as [Username]
,[email] as [Email]
,[firstname] as [Firstname]
,[lastname] as [Lastname]
,[organization] as [Organization]
,[groups] as [Groups]
,[sitedetails_shortname] as [Sitedetails Shortname]
,[sitedetails_name] as [Sitedetails Name]
,[sitedetails_role] as [Sitedetails Role]
,[created_date_time] as [Created Date Time] 	

FROM [gpd].[ecm_user_roles_groups]

