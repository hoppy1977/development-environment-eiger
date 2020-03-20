#################################################################################################
# Choco Install
#   Additonal packages can be found at https://chocolatey.org/packages
#   1) Remove/Add packages
#################################################################################################
Write-host "Choco Started At: $((Get-Date).ToString())"

$ChocoInstallPath = "$($env:SystemDrive)\ProgramData\Chocolatey\bin"
if (!(Test-Path $ChocoInstallPath)) {
    write-host "Install Chocolatey . . . "
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    write-host "END Installing Chocolatey!" 
} else {
    write-host "Upgrade Chocolatey . . . "
    choco upgrade chocolatey
    write-host "END Upgrade Chocolatey!"
}

Write-host "Choco Ended At: $((Get-Date).ToString())"
