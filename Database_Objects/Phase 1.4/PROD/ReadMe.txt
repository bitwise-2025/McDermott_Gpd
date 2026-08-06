Scripts created for QA Migration of NCSA DB Objects.
Folder Execution in the following order: 
1. Tables
2. Views
3. Stored_procedure
4. PROD/Scripts   [DO NOT execute the QA scripts]
5. Special Executions

If either the files or Subfolders are prepend with numericals e.g. '001_'. Execute the scripts in the same order
i.e. execute items named '001_' before executing items named '002_'. So and so forth

•Special executions: Are special request to move both the Table and its contents from source database to the target database directly (without any DML INSERT scripts). 
This action has been approved by Wenfu Wang

For Developers
01-04 Folder to be considered for QA migration which includes all updated scripts
