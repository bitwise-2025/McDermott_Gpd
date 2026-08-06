ALTER VIEW stage.coa_jde_v AS select S.*,D.PSRLevel1,D.PSRLevel2,D.PSRL1Description,D.PSRL2Description from 
(SELECT [stage_coa_jde_key]
       ,concat('JDE', '.', trim(isnull(contract_entity, '')), '.', trim(isnull(contract, '')), '.',  trim(isnull(costtype, '')), '.', trim(isnull(areaunit, '')), trim(isnull(costcode, ''))) coa_value
      ,[coa_type]
      ,[project]
      ,[projectname]
      ,[account]
      ,[contract]
      ,[contractdesc]
      ,[contract_entity]
      ,[contract_entity_desc]
      ,[contract_status]
      ,[project_entity]
      ,[project_entity_description]
      ,[areaunit]
      ,[areadesc]
      ,[costcode]
      ,[costdescription]
      ,[costtype]
      ,[coa_status]
      ,[source_name]
      ,[sub_source_name]
      ,[load_date]
  FROM [Stage].[coa_jde]) S
  LEFT OUTER JOIN (select coa_value,PSRLevel1,PSRLevel2,PSRL1Description,PSRL2Description  FROM dbo.dim_ent_jde_coa where active=1) D
  ON S.coa_value = D.coa_value

--Left outer join to ensure new records from stage.coa_jde still flow throw
--Subquery on the dim_ent_jde_coa to pick up active records only.


insert into generic_load_detail
values ('dim_ent_jde_coa', 'PSRLevel1', 'varchar(3)', 'TEXT', 'OA', 'PSRLevel1', null, null, null, null, null, null, null, null, null, null, null, null, 210, 'Y', null)
insert into generic_load_detail
values ('dim_ent_jde_coa', 'PSRLevel2', 'varchar(5)', 'TEXT', 'OA', 'PSRLevel2', null, null, null, null, null, null, null, null, null, null, null, null, 220, 'Y', null)
insert into generic_load_detail
values ('dim_ent_jde_coa', 'PSRL1Description', 'varchar(50)', 'TEXT', 'OA', 'PSRL1Description', null, null, null, null, null, null, null, null, null, null, null, null, 230, 'Y', null)
insert into generic_load_detail
values ('dim_ent_jde_coa', 'PSRL2Description', 'varchar(100)', 'TEXT', 'OA', 'PSRL2Description', null, null, null, null, null, null, null, null, null, null, null, null, 240, 'Y', null)

alter table Stage.reprocess_dim_ent_jde_coa
add  PSRLevel1 varchar(3) null

alter table Stage.reprocess_dim_ent_jde_coa
add  PSRLevel2 varchar(5) null

alter table Stage.reprocess_dim_ent_jde_coa
add  PSRL1Description varchar(50) null

alter table Stage.reprocess_dim_ent_jde_coa
add  PSRL2Description varchar(100) null



