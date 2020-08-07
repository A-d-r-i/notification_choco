Start-Process powershell -Verb runAs -ArgumentList "choco outdated`n` 
Write-Host '----------------'`n`
Write-Host 'Would you upgrade all the outdated packages? (press enter if you would - quit if you would not)'`n`rpause
choco upgrade all -y`n`rpause"