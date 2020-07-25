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
(get-item C:\Rainmeter\Checker.exe).Attributes += 'Hidden'
Get-Content -Path C:\Rainmeter\Skins\Vipers\DownloadFile\ChangeLog.txt | Out-String
Pause
Exit } 
         '2' { New-Item -ItemType "directory" -Path "$env:userprofile\desktop\Vipers-Backup" -Force | Out-Null
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
(get-item C:\Rainmeter\Checker.exe).Attributes += 'Hidden'
Get-Content -Path C:\Rainmeter\Skins\Vipers\DownloadFile\ChangeLog.txt | Out-String
Pause
Exit }
         'q' { Exit }
  }
 }
 until ($selection -eq 'q')