CREATE VIEW [yardkpi].[stage_ent_contract_CTCR_HRepair_vw]
AS select ROW_NUMBER() over(ORDER BY contract_id ASC) as rowID,
source_code,
sub_source_code,
contract_id,
contract_name,
contract_id as project_id,
LastUpdate
from (
select distinct
    'Manual' as source_code,
    'Excel' as sub_source_code,
    contract_id,
	contract_name,
	contract_id as project_id,
    getdate() LastUpdate
from [yardkpi].[stage_entp_CTCR_High_repair] dcsr
where not exists (select 1 from dbo.dim_ent_contract
        where contract_number = dcsr.contract_id
        and active = 1)
		) disa;
GO
