<# Disables WSL and Virtual Machine Platform #>
<# WSL sometimes interferes with VirtualBox and PearsonVue #>
<# Virtual Machine Platform interferes with PearsonVue #>

# https://learn.microsoft.com/en-us/powershell/module/dism/disable-windowsoptionalfeature?view=windowsserver2022-ps
# https://learn.microsoft.com/en-us/windows/wsl/troubleshooting
# Get-WindowsOptionalFeature -Online

Write-Host "Disable WSL and Virtual Machine Platform"
Write-Host "----------------"
Read-Host "Enter to continue"
Write-Host "----------------"
Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart
Disable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart
Write-Host "----------------"
Write-Host "Features Disabled. Make sure to restart to complete"