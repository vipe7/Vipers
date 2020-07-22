Unregister-ScheduledTask HWiNFO -Confirm:$false
$A = New-ScheduledTaskAction -Execute "C:\Rainmeter\HWiNFO\HWiNFO64.exe"
$T= (New-JobTrigger -AtLogOn -RandomDelay (new-Timespan -Seconds 15))
$P = New-ScheduledTaskPrincipal -RunLevel Highest -GroupId "BUILTIN\Administrators"
$S = New-ScheduledTaskSettingsSet -ExecutionTimeLimit 0 -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries
$D = New-ScheduledTask -Action $A -Principal $P -Trigger $T -Settings $S
Register-ScheduledTask HWiNFO -InputObject $D