#################################################################################################
# Choco Install
#   Additonal packages can be found at https://chocolatey.org/packages
#   1) Remove/Add packages
#################################################################################################
Write-host "Choco Started At: $((Get-Date).ToString())"

$ChocoInstallPath = "$($env:SystemDrive)\ProgramData\Chocolatey\bin"
if (!(Test-Path $ChocoInstallPath)) {
    write-host "Install Chocolatey . . . "
    Invoke-Expression ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')) | out-null
    write-host "END Installing Chocolatey!" 
} else {
    write-host "Upgrade Chocolatey . . . "
    choco upgrade chocolatey
    write-host "END Upgrade Chocolatey!"
}

chocolatey feature enable -n=allowGlobalConfirmation

write-host "Install ConEnmu . . . "
cinst -y  conemu | Out-Null
write-host "END Install ConEnmu!"

write-host "Install WinRAR . . . "
cinst -y  winrar | Out-Null
write-host "END Install WinRAR!"

write-host "Install 7zip . . . "
cinst -y  7zip | Out-Null
write-host "END Install 7zip!"

write-host "Install Slack . . . "
cinst -y  slack | Out-Null
write-host "END Install Slack!"

write-host "Install Chrome . . . "
cinst -y  GoogleChrome  | Out-Null
write-host "END Install Chrome!"

write-host "Install Firefox . . . "
cinst -y  firefox | Out-Null
write-host "END Install Firefox!"

write-host "Install GIT . . . "
cinst -y  git.install | Out-Null
write-host "END Install GIT!"

write-host "Install NodeJs . . . "
cinst -y nodejs.install | Out-Null
write-host "END Install NodeJs!"

write-host "Install Yarn . . . "
cinst -y yarn | Out-Null
write-host "END Install Yarn!"

write-host "Install Redis . . . "
cinst -y  redis | Out-Null
write-host "END Install Redis!"

write-host "Install Redis Desktop Manager . . . "
cinst -y  redis-desktop-manager | Out-Null
write-host "END Install Redis Desktop Manager!"

write-host "Install Visual Studio Code . . . "
cinst -y  visualstudiocode | Out-Null
write-host "END Install Visual Studio Code!"

write-host "Install Stackify Prefix . . ."
cinst -y prefix | Out-Null
write-host "END Install Stackify Prefix!"

write-host "Install FileZilla . . ."
cinst -y filezilla | Out-Null
write-host "END Install FileZilla!"

write-host "Install CCleaaner . . . "
cinst -y  ccleaner | Out-Null
write-host "END Install CCleaner!"

write-host "Install Dropbox . . . "
cinst -y  dropbox | Out-Null
write-host "END Install Dropbox!"

write-host "Install Web Api CMD . . . "
cinst -y webpicommandline | Out-Null
write-host "END Install Install Web Api CMD!"

# write-host "Install Url Rewrite and ARR . . ."
# $iis = Get-Service W3SVC
# if ($iis) 
# {
#     $webPiProducts = @('UrlRewrite2', 'ARRv3_0') 
#     WebPICMD /Install /Products:"$($webPiProducts -join ',')" /AcceptEULA | out-null
# }
# write-host "END Install Url Rewrite and ARR . . ."

# write-host "Install Visual Studio 2015 Enterprise . . ."
# cinst -y  visualstudio2015enterprise | Out-Null
# write-host "END Install Visual Studio 2015"

# write-host "Install Visual Studio 2015 Professional  . . ."
# cinst -y  visualstudio2015professional | Out-Null
# write-host "END Install Visual Studio 2015 Professional"

# write-host "Install Visual Studio 2015 Community  . . ."
# cinst -y  visualstudio2015community | Out-Null
# write-host "END Install Visual Studio 2015 Community"

write-host "Install Visual Studio 2017 Enterprise . . ."
cinst -y  visualstudio2017enterprise | Out-Null
write-host "END Install Visual Studio 2017"

# write-host "Install Visual Studio 2017 Professional  . . ."
# cinst -y  visualstudio2015professional | Out-Null
# write-host "END Install Visual Studio 2017 Professional"

# write-host "Install Visual Studio 2017 Community  . . ."
# cinst -y  visualstudio2015community | Out-Null
# write-host "END Install Visual Studio 2017 Community"

write-host "Install ReSharper . . . "
cinst -y  resharper | Out-Null
write-host "END Install ReSharper!"

# write-host "Install SQL Express 2016 . . . "
# cinst -y  sql-server-express | Out-Null
# write-host "END Install SQL Express 2016!"

# write-host "Install SQL Server Management Studio . . . "
# cinst -y  sql-server-management-studio  | Out-Null
# write-host "END Install SQL Server Management Studio!"

chocolatey feature disable -n=allowGlobalConfirmation

Write-host "Choco Ended At: $((Get-Date).ToString())"
