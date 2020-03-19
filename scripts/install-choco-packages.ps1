#################################################################################################
# Choco Install
#   Additonal packages can be found at https://chocolatey.org/packages
#   1) Remove/Add packages
#################################################################################################
Write-host "Choco Started At: $((Get-Date).ToString())"

chocolatey feature enable -n=allowGlobalConfirmation

write-host "Install Cmder . . . "
cinst -y  cmder | Out-Null
write-host "END Install Cmder!"

write-host "Install 7zip . . . "
cinst -y  7zip | Out-Null
write-host "END Install 7zip!"

write-host "Install Chrome . . . "
cinst -y  GoogleChrome  | Out-Null
write-host "END Install Chrome!"

write-host "Install NVM . . . "
cinst -y nvm | Out-Null
write-host "END Install NVM!"

write-host "Install Visual Studio 2019 Enterprise . . ."
cinst -y  visualstudio2019enterprise | Out-Null
write-host "END Install Visual Studio 2019"

# write-host "Install ReSharper . . . "
# cinst -y  resharper | Out-Null
# write-host "END Install ReSharper!"

chocolatey feature disable -n=allowGlobalConfirmation

Write-host "Choco Ended At: $((Get-Date).ToString())"
