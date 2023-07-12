<# Enables WSL and Virtual Machine Platform #>
<# For Docker and Virtual Machine Use #>

# https://learn.microsoft.com/en-us/powershell/module/dism/enable-windowsoptionalfeature?view=windowsserver2022-ps
# https://learn.microsoft.com/en-us/windows/wsl/troubleshooting
# Get-WindowsOptionalFeature -Online

Write-Host "Enable WSL and Virtual Machine Platform"
Write-Host "----------------"
Read-Host "Enter to continue"
Write-Host "----------------"
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart
Write-Host "----------------"
Write-Host "Features Enabled. Make sure to restart to complete"