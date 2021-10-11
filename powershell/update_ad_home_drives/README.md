# Home Drives Remapping in AD
------------

Requirements
------------------
1. CSV file with a list of users. - 'get-aduser -properties mail |select name,samaccountname,mail |export-csv -path'
2. Update 'PLACEHOLDER PATH' with the appropriate path to the csv.
3. Add a column in the csv for each of the following: samaccountname, homedrive, homedirectory

What it does
------------------
Use a generated list of users to update the homedrive and homedirectory attributes in Active Directory. 