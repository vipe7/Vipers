function Show-Menu
{
    param (
        [string]$Title = 'Vipers Troubleshooting'
    )
    Clear-Host
    Write-Host "================ $Title ================"

    Write-Host "Press '1' for reinstalling (you won't loose your settings)"
    Write-Host "Press '2' for FPS-FIX"
    Write-Host "Press 'Q' to quit."
}

do
 {
     Show-Menu
     $selection = Read-Host "Please make a selection"
     switch ($selection)
     {
         '1' { Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/vipe7/Vipers/master/Update.ps1')) } 
         '2' { Start-Process "C:\Rainmeter\FPS-FIX"}
         'q' { Exit }
  }
     pause
 }
 until ($selection -eq 'q')