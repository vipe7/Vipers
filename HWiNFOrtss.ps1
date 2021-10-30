Stop-Process -Name "RTSS"
Stop-Process -Name "HWiNFO64"
Unregister-ScheduledTask -TaskName HWiNFO -Confirm:$false
Unregister-ScheduledTask -TaskName RTSS -Confirm:$false
$1 = New-ScheduledTaskAction -Execute "C:\Program Files\HWiNFO64\HWiNFO64.EXE"
$2 = New-ScheduledTaskTrigger -AtLogOn
$3 = New-ScheduledTaskPrincipal -GroupId "BUILTIN\Users" -RunLevel Highest
$4 = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -DontStopOnIdleEnd -ExecutionTimeLimit 0
$5 = New-ScheduledTask -Action $1 -Principal $3 -Trigger $2 -Settings $4
Register-ScheduledTask HWiNFO -InputObject $5
$11 = New-ScheduledTaskAction -Execute "C:\Program Files (x86)\RivaTuner Statistics Server\RTSS.exe"
$12 = New-ScheduledTaskTrigger -AtLogOn
$13 = New-ScheduledTaskPrincipal -GroupId "BUILTIN\Users" -RunLevel Highest
$14 = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -DontStopOnIdleEnd -ExecutionTimeLimit 0 -StartWhenAvailable
$15 = New-ScheduledTask -Action $11 -Principal $13 -Trigger $12 -Settings $14
Register-ScheduledTask RTSS -InputObject $15
Set-ScheduledTask -TaskName "\HWiNFO" -Trigger (New-JobTrigger -AtLogOn -RandomDelay (new-Timespan -Seconds 15))
curl -o "$env:userprofile\desktop\HWiNFO64.INI" "https://github.com/vipe7/Vipers/raw/master/HWiNFO64.INI"
Copy-Item -Path "$env:userprofile\desktop\HWiNFO64.INI" -Destination "C:\Program Files\HWiNFO64"
Remove-Item $env:userprofile\desktop\HWiNFO64.INI -Force -Recurse
curl -o "$env:userprofile\desktop\Config" "https://github.com/vipe7/Vipers/raw/master/Config"
Copy-Item -Path "$env:userprofile\desktop\Config" -Destination "C:\Program Files (x86)\RivaTuner Statistics Server\Profiles"
Remove-Item $env:userprofile\desktop\Config -Force -Recurse
Start-Process -FilePath "RTSS.exe" -WorkingDirectory "C:\Program Files (x86)\RivaTuner Statistics Server"
Start-Process -FilePath "HWiNFO64.EXE" -WorkingDirectory "C:\Program Files\HWiNFO64"
