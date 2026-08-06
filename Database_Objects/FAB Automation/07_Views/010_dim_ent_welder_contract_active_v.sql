DROP VIEW [dbo].[dim_ent_welder_contract_active_v]
GO
CREATE VIEW [dbo].[dim_ent_welder_contract_active_v]
AS select 
dim_ent_welder_contract_sk,
dim_ent_welder_contract_nk,
contract_id as [Contract Id],
contract_description  as [Contract Description]
from [dbo].[dim_ent_welder_contract] 
where active = 1;
GO
