Stop-Process -Name "RTSS"
Stop-Process -Name "HWiNFO64"
Copy-Item -Path "C:\Rainmeter\Plugins\Config" -Destination "C:\Program Files (x86)\RivaTuner Statistics Server\Profiles"
$1 = New-ScheduledTaskAction -Execute "C:\Rainmeter\Plugins\HWiNFO64\HWiNFO64.EXE"
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
Start-Process -FilePath "RTSS.exe" -WorkingDirectory "C:\Program Files (x86)\RivaTuner Statistics Server"
Start-Process -FilePath "HWiNFO64.EXE" -WorkingDirectory "C:\Program Files\HWiNFO64"