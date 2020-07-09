New-Item -ItemType "directory" -Path "$env:userprofile\desktop\Vipers-Backup" -Force | Out-Null
Copy-Item -Path "C:\Rainmeter\Skins\Vipers\@Resources\*txt" -Destination "$env:userprofile\desktop\Vipers-Backup"
Stop-Process -Name "Rainmeter"
curl -o C:\Rainmeter\Update.zip https://www.dropbox.com/s/k3svqast39kel8x/Update.zip?dl=1
Remove-Item C:\Rainmeter\Skins\Vipers -Force -Recurse
Expand-Archive -Force C:\Rainmeter\Update.zip C:\Rainmeter\Skins
Copy-Item -Path "$env:userprofile\desktop\Vipers-Backup\*txt" -Destination "C:\Rainmeter\Skins\Vipers\@Resources"
Get-Content -Path C:\Rainmeter\Skins\Vipers\DownloadFile\ChangeLog.txt | Out-String
Remove-Item $env:userprofile\desktop\Vipers-Backup -Force -Recurse
Remove-Item C:\Rainmeter\Update.zip -Force -Recurse
Start-Process -FilePath "Rainmeter.exe" -WorkingDirectory "C:\Rainmeter"