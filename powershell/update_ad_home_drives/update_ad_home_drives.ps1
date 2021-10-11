install-module ActiveDirectory
$Users = Import-Csv -Delimiter "," -Path "PLACEHOLDER PATH"
foreach ($User in $Users)
{
set-aduser $user.sAMAccountName -homedrive $_.homedrive -homedirectory $_.homedirectory
}