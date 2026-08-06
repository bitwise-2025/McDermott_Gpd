DROP VIEW [dbo].[dim_ent_jcc_active_v]
GO

CREATE VIEW [dbo].[dim_ent_jcc_active_v]
AS select 
dim_ent_jcc_sk,
dim_ent_jcc_nk,
fab_code as [Fab Code], 
certificate_num as [Certificate Num],
jcc_no as [Jcc No],
process as [Process],
discipline as [Discipline],
jcc_submit_date as [Jcc Submit Date],
jcc_sign_date as [Jcc Sign Date],
jcc_receive_date as [Jcc Receive Date],
jcc_expiry_date  as [Jcc Expiry Date]
from [dbo].[dim_ent_jcc] 
where active = 1;
GO


