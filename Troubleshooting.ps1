function Show-Menu
{
    param (
        [string]$Title = 'Vipers Troubleshooting'
    )
    Clear-Host
    Write-Host "================ $Title ================"
    Write-Host "Press '1' for Completely Reinstall"
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
curl -o $env:userprofile\desktop\Vipers.rmskin https://github.com/vipe7/Vipers/raw/master/Vipers.rmskin
Invoke-Item "$env:userprofile\desktop\Vipers.rmskin"
Write-Host "`nPress install on a poped window`nWaiting..."
while ((get-process -name Rainmeter -ErrorAction SilentlyContinue).count -eq 0){}
Write-Host "Vipers is now Reinstalled`nIf your problem is not fixed,`nplease ask for help on discord"
Pause
Exit } 
         '2' { Stop-Process -Name "Rainmeter"
New-Item -ItemType "directory" -Path "$env:userprofile\desktop\Vipers-Backup" -Force | Out-Null
Copy-Item -Path "$env:userprofile\Documents\Rainmeter\Skins\Vipers\@Resources\Settings.txt" -Destination "$env:userprofile\desktop\Vipers-Backup"
curl -o "$env:userprofile\desktop\Vipers.zip" "https://github.com/vipe7/Vipers/raw/master/VipersNEW.zip"
Remove-Item "$env:userprofile\Documents\Rainmeter\Skins\Vipers\*" -Force -Recurse
Expand-Archive -Force "$env:userprofile\desktop\Vipers.zip" "$env:userprofile\Documents\Rainmeter\Skins"
Copy-Item -Path "$env:userprofile\desktop\Vipers-Backup\Settings.txt" -Destination "$env:userprofile\Documents\Rainmeter\Skins\Vipers\@Resources"
Remove-Item $env:userprofile\desktop\Vipers-Backup -Force -Recurse
Remove-Item $env:userprofile\desktop\Vipers.zip -Force -Recurse
Start-Process -FilePath "Rainmeter.exe" -WorkingDirectory "C:\Program Files\Rainmeter"
(get-item $env:userprofile\Documents\Rainmeter\Skins\Vipers\@Resources\vipe7.lua).Attributes += 'Hidden'
$objShell = New-Object -ComObject ("WScript.Shell")
$objShortCut = $objShell.CreateShortcut($env:USERPROFILE + "\Start Menu\Programs\Startup" + "\Vipers.lnk")
$objShortCut.TargetPath="C:\Program Files\Rainmeter\Rainmeter.exe"
$objShortCut.Save()
Write-Host "Vipers is now Repaired`nIf your problem is not fixed,`nplease Reinstall or ask for help on discord"
Pause
Exit }
         'q' { Exit }
  }
 }
 until ($selection -eq 'q')