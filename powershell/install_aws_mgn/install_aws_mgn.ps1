New-Item -Path C:\aws-mgn-agent -ItemType directory
$url = "https://aws-application-migration-service-hashes-YOUR-REGION-HERE.s3.amazonaws.com/latest/windows/AwsReplicationWindowsInstaller.exe.sha512"
$outpath = "C:\aws-mgn-agent\AwsReplicationWindowsInstaller.exe"
Invoke-WebRequest -Uri $url -OutFile $outpath
Start-Sleep 10
Start-Process -Filepath "C:\aws-mgn-agent\AwsReplicationWindowsInstaller.exe" -ArgumentList @("/q","/n")
AwsReplicationWindowsInstaller.exe --region YOUR-REGION-HERE --aws-access-key-id YOUR-ACCESS-KEY-HERE --aws-secret-access-key YOUR-SECRET-KEY-HERE --no-prompt