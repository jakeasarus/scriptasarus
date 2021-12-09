New-Item -Path C:\domain_discovery -ItemType directory
Start-Sleep 5
netdom query fsmo > c:\domain_discovery\query_fsmo.txt
get-windowsfeature | where-object {$_.InstallState -eq 'Installed'} > c:\domain_discovery\installed_features.txt
dcdiag > c:\domain_discovery\dcdiag.txt
repadmin /showrepl > c:\domain_discovery\repadmin_showrepl.txt
export-DhcpServer -ComputerName "THISCOMPUTERNAME" -File "C:\domain_discovery\dhcpexport.xml"

