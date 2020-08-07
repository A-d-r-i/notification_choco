$ErrorActionPreference = "Stop"
Import-Module -Name BurntToast

# POTENTIAL PUSH TO ANDROID
# Import-Module -Name PushoverForPS

$outdated = (choco outdated -r | Select-String '^([^|]+)\|.*$').Matches.Groups | Where-Object {$_.Name -eq 1} | ForEach-Object {$_.Value}
$pretty = ($outdated -join ', ')

If ($outdated.count -gt 0) {
$Text1 = New-BTText -Content  "Chocolatey - OUTDATED"
$Text2 = New-BTText -Content "$pretty"
$Button1 = New-BTButton -Content "CHECK" -Arguments 'C:\check_choco.ps1' -ActivationType Protocol
$Button2 = New-BTButton -Content "UPGRADE" -Arguments 'C:\upgrade_choco.ps1' -ActivationType Protocol
$action = New-BTAction -Buttons $Button1, $Button2
$Binding = New-BTBinding -Children $text1, $text2
$Visual = New-BTVisual -BindingGeneric $Binding
$Content = New-BTContent -Visual $Visual -Actions $action
Submit-BTNotification -Content $Content

# POTENTIAL PUSH TO ANDROID
#	Send-Pushover -AppToken APP_TOKEN_CREATED -UserKey USER_KEY_CREATED -Message "Outdated packages: `n$pretty"
} else {
exit
}

