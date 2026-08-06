Scripts created for PROD Migration of NCSA DB Objects.
Folder Execution in the following order: 
1. Tables
2. Views
3. Stored_procedure
4. Scripts

NOTE: 
If either the files or Subfolders are prepend with numerical e.g. '001_'. Execute the scripts in the same order
I.e. execute items named '001_' before executing items named '002_'. So and so forth


Within the INSERT/Update Scripts, few files are interdependent. I.e. a Failure to load in Script 012_INSERT_sec_sa will affect the 013_dbo file since it depends on the previous scripting running successfully. In such cases please reach out to Adnan and Satish for corrective action.
