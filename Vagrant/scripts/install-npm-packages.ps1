#################################################################################################
# npm Install
#   Additonal packages can be found at https://www.npmjs.com/
#   1) Remove/Add packages
#################################################################################################
Write-host "npm global installs Started At: $((Get-Date).ToString())"

write-host "Install Gulp . . ."
npm rm --global gulp
npm install gulp-cli -g
write-host "END Install Gulp!"

Write-host "npm global installs Ended At: $((Get-Date).ToString())"
