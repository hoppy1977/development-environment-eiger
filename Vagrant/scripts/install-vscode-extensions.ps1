#################################################################################################
# VS Code Extensions
#################################################################################################
Write-host "VS Code Started At: $((Get-Date).ToString())"

write-host "Install PowerShell Extension. . . "
code --install-extension ms-vscode.powershell
write-host "End Install PowerShell Extension. . . "

Write-host "VS Code Ended At: $((Get-Date).ToString())"