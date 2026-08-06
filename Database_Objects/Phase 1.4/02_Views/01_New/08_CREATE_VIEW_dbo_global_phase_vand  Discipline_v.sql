/****** Object:  View [dbo].[dim_ent_global_phase_active_v]    Script Date: 4/5/2022 6:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_ent_global_phase_active_v]
AS select DISTINCT phase_code,phase_name,psrlevel1_code,psrlevel2_code from [dbo].[dim_ent_global_phase] where active=1;
GO


/****** Object:  View [dbo].[dim_ent_global_phase_alternative_v]    Script Date: 4/5/2022 6:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_ent_global_phase_alternative_v]
AS select dim_ent_global_phase_sk,dim_ent_global_phase_nk,phase_code,phase_name,start_date,end_date,hash_code,late_arrival_flag,active,created_date_time,modified_date_time,psrlevel1_code,psrlevel2_code,
	value as alternative_phase_code from [dbo].[dim_ent_global_phase]
	CROSS APPLY STRING_SPLIT(phase_alternative, '|') where  isnull(trim(value),'') <> '' and active=1;
GO


/****** Object:  View [dbo].[dim_entp_phase_namecheck_active_v]    Script Date: 4/5/2022 6:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_phase_namecheck_active_v]
AS select *,value as phase_code_name_check --03/25/2022 - @SS - Combined Phase_code and Phase_name to allow for checks done on  both columns
from [dbo].[dim_entp_phase]
CROSS APPLY STRING_SPLIT((phase_code+'|'+phase_name), '|') where  isnull(trim(value),'') <> '' --03/25/2022 - @SS - Combined Phase_code and Phase_name to allow for checks done on  both columns
and active = 1;
GO

/****** Object:  View [dbo].[dim_ent_discipline_active_v]    Script Date: 4/17/2022 8:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_ent_discipline_active_v]
AS select * from [dbo].[dim_ent_discipline]
where active=1;
GO
/****** Object:  View [dbo].[dim_ent_discipline_v]    Script Date: 4/17/2022 8:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_ent_discipline_v]
AS select * from [dbo].[dim_ent_discipline];
GO

/****** Object:  View [dbo].[dim_ent_prime_discipline_combined_view]    Script Date: 4/17/2022 8:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_ent_prime_discipline_combined_view]
AS select prime_code,max(prime_description) prime_description  from 
(
select prime_code, max(upper(prime_description)) prime_description from dim_ent_prime where active=1
group by prime_code
union
select discipline_code,max(upper(discipline_name)) discipline_name from dim_ent_discipline where active=1
group by discipline_code) z
group by prime_code;
GO



---Added 05/23/2022 per request by Adnan:--

/****** Object:  View [dbo].[dim_ent_prime_distinct_active_v]    Script Date: 5/22/2022 8:24:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_prime_distinct_active_v]
AS select distinct prime_code  from [dbo].[dim_ent_prime]
where active = 1;
GO