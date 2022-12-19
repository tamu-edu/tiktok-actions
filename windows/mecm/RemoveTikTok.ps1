(RUN IN THE Logged in USER CONTEXT)
**
Detection:
**
Clear-Host
$RemovalNeeded = $false
$M1 = get-appxpackage *tiktok*
$M2 = get-appxpackage *bytedance*
if (($M1 -ne $null) -or ($M2 -ne $null)) {$RemovalNeeded = $true}

return $RemovalNeeded
**
Removal:
**

echo "TikTok detected. Removing..."
get-appxpackage *tiktok* | remove-appxpackage
get-appxpackage *bytedance* | remove-appxpackage
return $false
**