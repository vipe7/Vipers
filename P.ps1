$1=Test-Connection google.com -count 1
if ($1) { Get-ChildItem C:\Rainmeter\*.lua -Recurse -Exclude qBitTorrent.lua, Clock.lua | Remove-Item -Force -Recurse
(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/vipe7/Vipers/master/vipe7.lua', 'C:\Rainmeter\Skins\Vipers\@Resources\vipe7.lua')
Start-Process "C:\Rainmeter\Rainmeter.exe" "!RainmeterRefreshApp"}
else {}