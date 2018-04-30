$status = Get-MpComputerStatus
$rtp_enabled = $status.RealTimeProtectionEnabled

if ($rtp_enabled) {
    Set-MpPreference -DisableRealtimeMonitoring $True
} else {
    Set-MpPreference -DisableRealtimeMonitoring $False
}
