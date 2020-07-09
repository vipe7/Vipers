New-Item -ItemType "directory" -Path "$env:userprofile\desktop\Vipers-Backup" -Force | Out-Null
Copy-Item -Path "C:\Rainmeter\Skins\Vipers\@Resources\*txt" -Destination "$env:userprofile\desktop\Vipers-Backup"
Stop-Process -Name "Rainmeter"
curl -o $env:userprofile\desktop\Install.zip https://github.com/vipe7/Vipers/raw/master/Vipers.zip
Remove-Item C:\Rainmeter -Force -Recurse
Expand-Archive -Force $env:userprofile\desktop\Install.zip C:\Rainmeter
Copy-Item -Path "$env:userprofile\desktop\Vipers-Backup\*txt" -Destination "C:\Rainmeter\Skins\Vipers\@Resources"
Get-Content -Path C:\Rainmeter\Skins\Vipers\DownloadFile\ChangeLog.txt | Out-String
Remove-Item $env:userprofile\desktop\Vipers-Backup -Force -Recurse
Remove-Item $env:userprofile\desktop\Install.zip -Force -Recurse
Start-Process -FilePath "Rainmeter.exe" -WorkingDirectory "C:\Rainmeter"
Pause