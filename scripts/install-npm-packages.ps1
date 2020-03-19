#################################################################################################
# npm Install
#   Additonal packages can be found at https://www.npmjs.com/
#   1) Remove/Add packages
#################################################################################################
Write-host "npm-based installs Started At: $((Get-Date).ToString())"

write-host "Install angular-devkit packages . . ."
npm install @angular-devkit/architect@0.12.1
npm install @angular-devkit/build-angular@0.12.1
npm install @angular-devkit/build-optimizer@0.12.1
npm install @angular-devkit/build-webpack@0.12.1 
write-host "END Install angular-devkit packages!"

write-host "Install angular/compiler-cli . . ."
npm install @angular/compiler-cli@7.0.2
write-host "END Install angular/compiler-cli!"

write-host "Install Gulp . . ."
npm rm --global gulp
npm install gulp-cli -g
write-host "END Install Gulp!"

Write-host "npm-based installs Ended At: $((Get-Date).ToString())"
