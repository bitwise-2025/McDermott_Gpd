CREATE NONCLUSTERED INDEX [idx_Contract_Fabrication_Pars] ON [epr].[Fabrication_PARS_All_Projects]
(
	[Contract] 
)WITH (DROP_EXISTING = OFF)
GO

CREATE VIEW [epr].[D7072 - FAB PARS]
as select [Parent Transaction Type],
[Transaction Type],
[Contract],
[Entity],
[Job Number],
[Sub-function],
[Activity Code],
[Man Hours],
[Effective Date],
[Revision]
from [epr].[Fabrication_PARS_All_Projects]
where Contract='D7072'

CREATE VIEW [epr].[D7390 - FAB PARS]
as select [Parent Transaction Type],
[Transaction Type],
[Contract],
[Entity],
[Job Number],
[Sub-function],
[Activity Code],
[Man Hours],
[Effective Date],
[Revision]
from [epr].[Fabrication_PARS_All_Projects]
where Contract='D7390'

CREATE VIEW [epr].[D7068 - FAB PARS]
as select [Parent Transaction Type],
[Transaction Type],
[Contract],
[Entity],
[Job Number],
[Sub-function],
[Activity Code],
[Man Hours],
[Effective Date],
[Revision]
from [epr].[Fabrication_PARS_All_Projects]
where Contract='D7068'

CREATE VIEW [epr].[D7029 - FAB PARS]
as select [Parent Transaction Type],
[Transaction Type],
[Contract],
[Entity],
[Job Number],
[Sub-function],
[Activity Code],
[Man Hours],
[Effective Date],
[Revision]
from [epr].[Fabrication_PARS_All_Projects]
where Contract='D7029'

CREATE VIEW [epr].[D7415 - FAB PARS]
as select [Parent Transaction Type],
[Transaction Type],
[Contract],
[Entity],
[Job Number],
[Sub-function],
[Activity Code],
[Man Hours],
[Effective Date],
[Revision]
from [epr].[Fabrication_PARS_All_Projects]
where Contract='D7415'

CREATE VIEW [epr].[D7512 - FAB PARS]
as select [Parent Transaction Type],
[Transaction Type],
[Contract],
[Entity],
[Job Number],
[Sub-function],
[Activity Code],
[Man Hours],
[Effective Date],
[Revision]
from [epr].[Fabrication_PARS_All_Projects]
where Contract='D7512'

CREATE VIEW [epr].[D7521 - FAB PARS]
as select [Parent Transaction Type],
[Transaction Type],
[Contract],
[Entity],
[Job Number],
[Sub-function],
[Activity Code],
[Man Hours],
[Effective Date],
[Revision]
from [epr].[Fabrication_PARS_All_Projects]
where Contract='D7521'

CREATE VIEW [epr].[D6732 - FAB PARS]
as select [Parent Transaction Type],
[Transaction Type],
[Contract],
[Entity],
[Job Number],
[Sub-function],
[Activity Code],
[Man Hours],
[Effective Date],
[Revision]
from [epr].[Fabrication_PARS_All_Projects]
where Contract='D6732'

CREATE VIEW [epr].[E0703A - FAB PARS]
as select [Parent Transaction Type],
[Transaction Type],
[Contract],
[Entity],
[Job Number],
[Sub-function],
[Activity Code],
[Man Hours],
[Effective Date],
[Revision]
from [epr].[Fabrication_PARS_All_Projects]
where Contract='E0703A'

CREATE VIEW [epr].[E0703 - FAB PARS]
as select [Parent Transaction Type],
[Transaction Type],
[Contract],
[Entity],
[Job Number],
[Sub-function],
[Activity Code],
[Man Hours],
[Effective Date],
[Revision]
from [epr].[Fabrication_PARS_All_Projects]
where Contract='E0703'

CREATE VIEW [epr].[D7317 - FAB PARS]
as select [Parent Transaction Type],
[Transaction Type],
[Contract],
[Entity],
[Job Number],
[Sub-function],
[Activity Code],
[Man Hours],
[Effective Date],
[Revision]
from [epr].[Fabrication_PARS_All_Projects]
where Contract='D7317'

CREATE VIEW [epr].[D7650 - FAB PARS]
as select [Parent Transaction Type],
[Transaction Type],
[Contract],
[Entity],
[Job Number],
[Sub-function],
[Activity Code],
[Man Hours],
[Effective Date],
[Revision]
from [epr].[Fabrication_PARS_All_Projects]
where Contract='D7650'

CREATE VIEW [epr].[D7842 - FAB PARS]
as select [Parent Transaction Type],
[Transaction Type],
[Contract],
[Entity],
[Job Number],
[Sub-function],
[Activity Code],
[Man Hours],
[Effective Date],
[Revision]
from [epr].[Fabrication_PARS_All_Projects]
where Contract='D7842'

CREATE VIEW [epr].[D7481 - FAB PARS]
as select [Parent Transaction Type],
[Transaction Type],
[Contract],
[Entity],
[Job Number],
[Sub-function],
[Activity Code],
[Man Hours],
[Effective Date],
[Revision]
from [epr].[Fabrication_PARS_All_Projects]
where Contract='D7481'

