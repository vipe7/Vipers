Stop-Process -Name "Rainmeter"
New-Item -ItemType "directory" -Path "$env:userprofile\desktop\Vipers-Backup" -Force | Out-Null
Copy-Item -Path "$env:userprofile\Documents\Rainmeter\Skins\Vipers\@Resources\*txt" -Destination "$env:userprofile\desktop\Vipers-Backup"
curl -o "$env:userprofile\desktop\Vipers.zip" "https://github.com/vipe7/Vipers/raw/master/VipersNEW.zip"
Remove-Item "$env:userprofile\Documents\Rainmeter\Skins\Vipers\*" -Force -Recurse
Expand-Archive -Force "$env:userprofile\desktop\Vipers.zip" "$env:userprofile\Documents\Rainmeter\Skins"
Copy-Item -Path "$env:userprofile\desktop\Vipers-Backup\*txt" -Destination "$env:userprofile\Documents\Rainmeter\Skins\Vipers\@Resources"
Remove-Item $env:userprofile\desktop\Vipers-Backup -Force -Recurse
Remove-Item $env:userprofile\desktop\Vipers.zip -Force -Recurse
Start-Process -FilePath "Rainmeter.exe" -WorkingDirectory "C:\Program Files\Rainmeter"
(get-item $env:userprofile\Documents\Rainmeter\Skins\Vipers\@Resources\vipe7.lua).Attributes += 'Hidden'
$objShell = New-Object -ComObject ("WScript.Shell")
$objShortCut = $objShell.CreateShortcut($env:USERPROFILE + "\Start Menu\Programs\Startup" + "\Vipers.lnk")
$objShortCut.TargetPath="C:\Program Files\Rainmeter\Rainmeter.exe"
$objShortCut.Save()
Write-Host "Vipers is now Updated`n"
Pause