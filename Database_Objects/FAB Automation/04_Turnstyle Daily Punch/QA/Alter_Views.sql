ALTER VIEW [dbo].[dim_ent_daily_punch_v] AS select ts_date,person_no_external,punch_in,punch_out,dim_ent_fab_rota_sk,run_timestamp,
case when
	(case when 
	(select dim_ent_emp_shift_config_nk from dbo.[dim_ent_emp_shift_config] shft  where 
	(f.punch_in between shft.shift_start_range1 and shft.shift_end_range1)) is null
	then
	(select dim_ent_emp_shift_config_nk from dbo.[dim_ent_emp_shift_config] shft  where 
	(f.punch_out between shft.shift_start_range2 and shft.shift_end_range2))
	else
	(select dim_ent_emp_shift_config_nk from dbo.[dim_ent_emp_shift_config] shft  where 
	(f.punch_in between shft.shift_start_range1 and shft.shift_end_range1))
	end) is null
then 
	(case when 
	(select dim_ent_emp_shift_config_nk from dbo.[dim_ent_emp_shift_config] shft  where 
	(f.punch_in between shft.shift_start_range2 and shft.shift_end_range2)) is null
	then
	(select dim_ent_emp_shift_config_nk from dbo.[dim_ent_emp_shift_config] shft  where 
	(f.punch_out between shft.shift_start_range1 and shft.shift_end_range1))
	else
	(select dim_ent_emp_shift_config_nk from dbo.[dim_ent_emp_shift_config] shft  where 
	(f.punch_in between shft.shift_start_range2 and shft.shift_end_range2))
	end)
else 
	(case when 
	(select dim_ent_emp_shift_config_nk from dbo.[dim_ent_emp_shift_config] shft  where 
	(f.punch_in between shft.shift_start_range1 and shft.shift_end_range1)) is null
	then
	(select dim_ent_emp_shift_config_nk from dbo.[dim_ent_emp_shift_config] shft  where 
	(f.punch_out between shft.shift_start_range2 and shft.shift_end_range2))
	else
	(select dim_ent_emp_shift_config_nk from dbo.[dim_ent_emp_shift_config] shft  where 
	(f.punch_in between shft.shift_start_range1 and shft.shift_end_range1))
	end)
end

shift
--,dim_ent_emp_shift_config_nk 
from 
(select distinct d.ts_date,d.person_no_external,d.punch punch_in,d.punch_type,run_timestamp,created_date_time,
lead(d.punch,1) OVER(ORDER BY d.person_no_external,d.ts_date,d.punch_type,d.run_timestamp ASC) AS punch_out
from [dbo].[dim_ent_turnstyle_daily_punch] d ,
(select person_no_external,ts_date,min(run_timestamp) min_run_timestamp,max(run_timestamp) max_run_timestamp from [dbo].[dim_ent_turnstyle_daily_punch]
where 
active = 1
group by person_no_external,ts_date) g
where d.active = 1
and d.run_timestamp >= dateadd(day,-30,run_timestamp) 
and d.person_no_external = g.person_no_external
and d.ts_date = g.ts_date
and (d.run_timestamp = g.max_run_timestamp or d.run_timestamp = g.min_run_timestamp)
and punch_type <> ''
) f
LEFT OUTER JOIN dbo.dim_ent_fab_rota fro ON 
fro.hcm_number = f.person_no_external
--replicate('0',8 - len(ltrim(rtrim(fro.sap_number)))) + ltrim(rtrim(fro.sap_number)) = f.person_no_external
   and f.ts_date = fro.action_date
where punch_type = 'In Punch';
GO




ALTER VIEW [dbo].[dim_ent_daily_punch_history_v]
AS select dim_ent_fab_rota_sk,ts_date,person_no_external,punch,punch_type,run_timestamp,device_name,f.created_date_time 
from [dbo].[dim_ent_turnstyle_daily_punch] f
LEFT OUTER JOIN dbo.dim_ent_fab_rota fro ON 
fro.hcm_number = f.person_no_external
--replicate('0',8 - len(ltrim(rtrim(fro.sap_number)))) + ltrim(rtrim(fro.sap_number)) = f.person_no_external
   and f.ts_date = fro.action_date;
GO



