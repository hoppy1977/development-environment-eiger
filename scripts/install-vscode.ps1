#################################################################################################
# VS Code (And Extensions)
#################################################################################################
Write-host "VS Code Started At: $((Get-Date).ToString())"

write-host "Install Visual Studio Code . . . "
cinst -y  visualstudiocode | Out-Null
write-host "END Install Visual Studio Code!"

write-host "Install PowerShell Extension. . . "
code --install-extension ms-vscode.powershell
write-host "End Install PowerShell Extension. . . "

Write-host "VS Code Ended At: $((Get-Date).ToString())"