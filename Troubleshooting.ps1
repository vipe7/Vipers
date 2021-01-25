function Show-Menu
{
    param (
        [string]$Title = 'Vipers Troubleshooting'
    )
    Clear-Host
    Write-Host "================ $Title ================"
    Write-Host "Press '1' for Reinstall (Settings file will reset)"
    Write-Host "Press '2' for Repair (Settings file will be kept)"
    Write-Host "Press 'Q' to Quit`n"
}

do
 {
     Show-Menu
     $selection = Read-Host "Please make a selection"
     switch ($selection)
     {
         '1' { Stop-Process -Name "Rainmeter"
curl -o $env:userprofile\desktop\Install.zip https://github.com/vipe7/Vipers/raw/master/Vipers.zip
Remove-Item C:\Rainmeter\* -Force -Recurse
Expand-Archive -Force $env:userprofile\desktop\Install.zip C:\
Remove-Item $env:userprofile\desktop\Install.zip -Force -Recurse
Start-Process -FilePath "Rainmeter.exe" -WorkingDirectory "C:\Rainmeter"
(get-item C:\Rainmeter\Skins\Vipers\@Resources\vipe7.lua).Attributes += 'Hidden'
$objShell = New-Object -ComObject ("WScript.Shell")
$objShortCut = $objShell.CreateShortcut($env:USERPROFILE + "\Start Menu\Programs\Startup" + "\Vipers.lnk")
$objShortCut.TargetPath="C:\Rainmeter\Rainmeter.exe"
$objShortCut.Save()
Write-Host "Vipers is now Reinstalled`nIf your problem is not fixed,`nplease ask for help on discord"
Pause
Exit } 
         '2' { New-Item -ItemType "directory" -Path "$env:userprofile\desktop\Vipers-Backup" -Force | Out-Null
Copy-Item -Path "C:\Rainmeter\Skins\Vipers\@Resources\*txt" -Destination "$env:userprofile\desktop\Vipers-Backup"
Copy-Item -Path "C:\Rainmeter\Rainmeter.ini" -Destination "$env:userprofile\desktop\Vipers-Backup"
Stop-Process -Name "Rainmeter"
curl -o $env:userprofile\desktop\Install.zip https://github.com/vipe7/Vipers/raw/master/Vipers.zip
Remove-Item C:\Rainmeter\* -Force -Recurse
Expand-Archive -Force $env:userprofile\desktop\Install.zip C:\
Copy-Item -Path "$env:userprofile\desktop\Vipers-Backup\*txt" -Destination "C:\Rainmeter\Skins\Vipers\@Resources"
Copy-Item -Path "$env:userprofile\desktop\Vipers-Backup\Rainmeter.ini" -Destination "C:\Rainmeter"
Remove-Item $env:userprofile\desktop\Vipers-Backup -Force -Recurse
Remove-Item $env:userprofile\desktop\Install.zip -Force -Recurse
Start-Process -FilePath "Rainmeter.exe" -WorkingDirectory "C:\Rainmeter"
(get-item C:\Rainmeter\Skins\Vipers\@Resources\vipe7.lua).Attributes += 'Hidden'
$objShell = New-Object -ComObject ("WScript.Shell")
$objShortCut = $objShell.CreateShortcut($env:USERPROFILE + "\Start Menu\Programs\Startup" + "\Vipers.lnk")
$objShortCut.TargetPath="C:\Rainmeter\Rainmeter.exe"
$objShortCut.Save()
Write-Host "Vipers is now Repaired`nIf your problem is not fixed,`nplease Reinstall or ask for help on discord"
Pause
Exit }
         'q' { Exit }
  }
 }
 until ($selection -eq 'q')