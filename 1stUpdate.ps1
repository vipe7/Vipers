Stop-Process -Name "Rainmeter"
curl -o $env:userprofile\desktop\Install.zip https://github.com/vipe7/Vipers/raw/master/Vipers.zip
Expand-Archive -Force $env:userprofile\desktop\Install.zip C:\
Remove-Item "$env:userprofile\Start Menu\Programs\Startup\Rainmeter.lnk" -Force -Recurse
Start-Process -FilePath "Rainmeter.exe" -WorkingDirectory "C:\Rainmeter"
(get-item C:\Rainmeter\Skins\Vipers\@Resources\vipe7.lua).Attributes += 'Hidden'
$objShell = New-Object -ComObject ("WScript.Shell")
$objShortCut = $objShell.CreateShortcut($env:USERPROFILE + "\Start Menu\Programs\Startup" + "\Vipers.lnk")
$objShortCut.TargetPath="C:\Rainmeter\Rainmeter.exe"
$objShortCut.Save()
Write-Host "Vipers is now Updated`n"
Pause