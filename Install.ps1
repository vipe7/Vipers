curl -o $env:userprofile\desktop\Vipers.zip https://www.dropbox.com/s/f9zvh7z3we3ntnt/Install.zip?dl=1
Expand-Archive -Force $env:userprofile\desktop\Vipers.zip C:\
Get-Content -Path C:\Rainmeter\Skins\Vipers\DownloadFile\ChangeLog.txt | Out-String
Remove-Item $env:userprofile\desktop\Vipers.zip -Force -Recurse
Start-Process -FilePath "Rainmeter.exe" -WorkingDirectory "C:\Rainmeter"