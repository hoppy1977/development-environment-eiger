#################################################################################################
# npm Install
#   Additonal packages can be found at https://www.npmjs.com/
#   1) Remove/Add packages
#################################################################################################
Write-host "npm-version installs Started At: $((Get-Date).ToString())"

write-host "Install npm version 10.13.0 . . ."
nvm install 10.13.0
nvm use 10.13.0
write-host "End Install npm version 10.13.0 . . ."

Write-host "npm-version installs Ended At: $((Get-Date).ToString())"
