$GetID = ((Get-WmiObject Win32_Bios).SerialNumber)
Start-Process "C:\Rainmeter\Rainmeter.exe" "!RainmeterSetVariable zPremiumID $GetID"
if ($GetID -eq 'NHQ1XEX002703025C37200') {Start-Process "C:\Rainmeter\Rainmeter.exe" "!RainmeterSetVariable zPremiumStatusNEW Active"} #ME#
elseif ($GetID -eq 'NHQ1XEX002703025C37200') {Start-Process "C:\Rainmeter\Rainmeter.exe" "!RainmeterSetVariable zPremiumStatusNEW Active"}
else {Start-Process "C:\Rainmeter\Rainmeter.exe" "!RainmeterSetVariable zPremiumStatusNEW NotActive"}
Pause