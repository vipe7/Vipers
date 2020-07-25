function Show-Menu
{
    param (
        [string]$Title = 'Vipers Troubleshooting'
    )
    Clear-Host
    Write-Host "================ $Title ================"

    Write-Host "Press '1' for Repair"
    Write-Host "Press '2' for FPS-FIX (Restart required)"
    Write-Host "Press '3' for WebNowPlaying Configuration Guide"
    Write-Host "Press 'R' to Restart Computer"
    Write-Host "Press 'Q' to Quit."
}

do
 {
     Show-Menu
     $selection = Read-Host "Please make a selection"
     switch ($selection)
     {
         '1' { Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/vipe7/Vipers/master/Update.ps1')) } 
         '2' { Start-Process "C:\Rainmeter\FPS-FIX" }
		 '3' { Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/vipe7/Vipers/master/WebNowPlaying.ps1')) }
         'r' { Restart-Computer }
         'q' { Exit }
  }
 }
 until ($selection -eq 'q')