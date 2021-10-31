Write-Host "Downloading HWiNFO & RTSS...`n"
curl -o "$env:userprofile\desktop\HWiNFO.exe" "https://github.com/vipe7/Vipers/raw/master/HWiNFO.exe"
curl -o "$env:userprofile\desktop\RTSS.exe" "https://github.com/vipe7/Vipers/raw/master/RTSS.exe"
Write-Host "Download completed`n"
Write-Host "`nInstalling HWiNFO...`n"
Start-Process -Wait -FilePath "$env:userprofile\desktop\HWiNFO.exe" -Argument "/Silent" -PassThru
Write-Host "`nInstalling RTSS`n"
Start-Process -Wait -FilePath "$env:userprofile\desktop\RTSS.exe" -Argument "/Silent" -PassThru
Write-Host "`nDONE!`nNow you can continue to Step 2 under Vipers Settings`n"
Pause