Write-Host "Vipers Installer`n`n`n`n`n`n`n"
Write-Host "Downloading MSIAfterburner & RTSS...`n"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/vipe7/Vipers/master/MSI.exe" -OutFile "$env:userprofile\desktop\MSI.exe"
Write-Host "MSIAfterburner & RTSS downloaded`n"
Write-Host "Installing MSIAfterburner & RTSS...`n"
Start-Process -Wait -FilePath $env:userprofile\desktop\MSI.exe -ArgumentList '/S','/v','/qn' -passthru
Write-Host "`nMSIAfterburner & RTSS installed`n"
Write-Host "Removing downloaded files...`n"
Remove-Item "$env:userprofile\desktop\MSI.exe"
Remove-Item "$env:userprofile\desktop\MSI Afterburner.lnk"
Write-Host "ALL DONE`nPlease make MSIAfterburner and RTSS to start with Windows`nCheck step 2) Setting up MSI & TRSS"
Pause