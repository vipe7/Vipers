Stop-Process -Name "RTSS"
Stop-Process -Name "HWiNFO64"
Stop-Process -Name "Rainmeter"
Unregister-ScheduledTask -TaskName HWiNFO -Confirm:$false
Unregister-ScheduledTask -TaskName RTSS -Confirm:$false
New-Item -ItemType "directory" -Path "$env:userprofile\desktop\Vipers-Backup" -Force | Out-Null
Copy-Item -Path "C:\Rainmeter\Skins\Vipers\@Resources\Settings.txt" -Destination "$env:userprofile\desktop\Vipers-Backup"
Remove-Item C:\Rainmeter -Force -Recurse
curl -o $env:userprofile\desktop\Rainmeter-4.5.4.exe https://builds.rainmeter.net/Rainmeter-4.5.4.exe
while ((get-process -name Rainmeter -ErrorAction SilentlyContinue).count -eq 0){}
Stop-Process -Name "Rainmeter"
Remove-Item $env:userprofile\Documents\Rainmeter\Skins\illustro -Force -Recurse
curl -o "$env:userprofile\desktop\Vipers.rmskin" "https://github.com/vipe7/Vipers/raw/master/Vipers.rmskin"
Invoke-Item "$env:userprofile\desktop\Vipers.rmskin"

