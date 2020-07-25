function Show-Menu
{
    param (
        [string]$Title = 'WebNowPlaying Configuration'
    )
    Clear-Host
    Write-Host "================ $Title ================"

    Write-Host "Press '1' for Edge"
    Write-Host "Press '2' for Chrome"
	Write-Host "Press '3' for Firefox"
	Write-Host "Press '4' for Opera"
    Write-Host "Press 'Q' to Quit."
}


do
 {
     Show-Menu
     $selection = Read-Host "Please make a selection"
     switch ($selection)
     {
         '1' { Write-Host "`nStep-by-step guide: `n How to install WebNowPlaying Extension for Microsoft Edge browser: `n 1) Open Edge `n 2) Click on Settings and more (...) (Or press Alt+F) `n 3) Click on Extensions `n 4) Allow extensions from other stores (bottom left option) should be allowed `n" | pause
		 Write-Host "`nIt's time to install the extension `nBy pressing ENTER you will be navigated to Extension website location `nJust install it and everything should work! `n" | pause
		 Start-Process "https://chrome.google.com/webstore/detail/webnowplaying-companion/jfakgfcdgpghbbefmdfjkbdlibjgnbli"
		 pause
		 Exit}			 
         '2' {Write-Host "`nBy pressing ENTER you will be navigated to Extension website location `nJust install it and everything should work! `n" | pause
		 Start-Process "https://chrome.google.com/webstore/detail/webnowplaying-companion/jfakgfcdgpghbbefmdfjkbdlibjgnbli"
		 pause
		 Exit}	
         '3' {Write-Host "`nBy pressing ENTER you will be navigated to Extension website location `nJust install it and everything should work! `n" | pause
		 Start-Process "https://addons.mozilla.org/en-US/firefox/addon/webnowplaying-companion/"
		 pause
		 Exit}	
		 '4' { Write-Host "`nBy pressing ENTER you will be navigated to Opera's Extension which allows you to install Chrome's Extensions `nJust install it and continue the guide from here`n" | pause
		 Start-Process "https://addons.opera.com/bg/extensions/details/install-chrome-extensions/"
		 pause
		 Write-Host "`nIt's time to install the main extension `nBy pressing ENTER you will be navigated to Extension website location `nJust install it and everything should work! `n" | pause
		 Start-Process "https://chrome.google.com/webstore/detail/webnowplaying-companion/jfakgfcdgpghbbefmdfjkbdlibjgnbli"
		 pause
		 Exit}		
         'q' { Exit }
  }
 }
 until ($selection -eq 'q')