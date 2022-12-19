(RUN IN THE Logged in USER CONTEXT)
**
Detection:
**
cls
$RemovalNeeded = $false
$M1 = get-appxpackage *tiktok*
$M2 = get-appxpackage *bytedance*
if (($M1 -ne $null) -or ($M2 -ne $null)) {$RemovalNeeded = $true}

return $RemovalNeeded
**
Removal:
**

echo "Removing app as it's been detected"
get-appxpackage *tiktok* | remove-appxpackage
get-appxpackage *bytedance* | remove-appxpackage
return $false
**