New-Item -ItemType "directory" -Path "$env:userprofile\desktop\Vipers-Backup" -Force | Out-Null
Copy-Item -Path "C:\Rainmeter\Skins\Vipers\@Resources\*txt" -Destination "$env:userprofile\desktop\Vipers-Backup"
Stop-Process -Name "Rainmeter"
curl -o $env:userprofile\desktop\Install.zip https://github.com/vipe7/Vipers/raw/master/Vipers.zip
Remove-Item C:\Rainmeter\* -Force -Recurse
Expand-Archive -Force $env:userprofile\desktop\Install.zip C:\
Copy-Item -Path "$env:userprofile\desktop\Vipers-Backup\*txt" -Destination "C:\Rainmeter\Skins\Vipers\@Resources"
Remove-Item $env:userprofile\desktop\Vipers-Backup -Force -Recurse
Remove-Item $env:userprofile\desktop\Install.zip -Force -Recurse
Start-Process -FilePath "Rainmeter.exe" -WorkingDirectory "C:\Rainmeter"
(get-item C:\Rainmeter\Skins\Vipers\@Resources\vipe7.lua).Attributes += 'Hidden'
$objShell = New-Object -ComObject ("WScript.Shell")
$objShortCut = $objShell.CreateShortcut($env:USERPROFILE + "\Start Menu\Programs\Startup" + "\Vipers.lnk")
$objShortCut.TargetPath="C:\Rainmeter\Rainmeter.exe"
$objShortCut.Save()
Write-Host "Vipers is now Updated/Installed`n"
Pause