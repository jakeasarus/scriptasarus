#install-module ActiveDirectory
$Users = Import-Csv -Delimiter "," -Path "PLACEHOLDER\PATH"
foreach ($User in $Users)
{
$homeDirectory = 'PARENT\DIRECTORY' + $user.SamAccountName;
set-aduser $user.sAMAccountName -homedrive $_.homedrive -homedirectory $homedirectory
}