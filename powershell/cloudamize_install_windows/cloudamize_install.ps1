New-Item -Path C:\cloudamize_install -ItemType directory
$url = "https://thinkstack-pub-20180927131742566400000001.s3.amazonaws.com/cloudamize_installer/cloudamize_agent.msi"
$outpath = "C:\cloudamize_install\cloudamize_agent.msi"
Invoke-WebRequest -Uri $url -OutFile $outpath
Start-Sleep 10
msiexec /i  "C:\cloudamize_install\cloudamize_agent.msi" customerkey=CUSTOMER-KEY-HERE /qn