#Written by Nick Swanzy v1
$HostsLoc = "$env:SystemDrive\Windows\System32\drivers\etc\hosts"
$HostsContents = Get-Content $HostsLoc
$ComplianceCheck = 0

$DNSArrayDomains = @(
    [pscustomobject]@{Domain='127.0.0.1 tiktok.com www.tiktok.com #Block TikTok domain'},
    [pscustomobject]@{Domain='127.0.0.1 tiktokv.com www.tiktokv.com #Block tiktokv domain'},
    [pscustomobject]@{Domain='127.0.0.1 tiktokcdn.com www.tiktokcdn.com #Block tiktokcdn domain'},
    [pscustomobject]@{Domain='127.0.0.1 tiktokcdn-us.com www.tiktokcdn-us.com #Block tiktokcdn-us domain'},
    [pscustomobject]@{Domain='127.0.0.1 ttwstatic.com www.ttwstatic.com #Block ttwstatic domain'},
    [pscustomobject]@{Domain='127.0.0.1 bytedapm.com bytedapm.com #Block bytedapm domain'}
)
foreach($DNSArrayDomain in $DNSArrayDomains){
    $CustomDomain = $DNSArrayDomain | Select-Object -ExpandProperty Domain
    Write-Output "$CustomDomain"
    if ($HostsContents | Select-String -pattern ($CustomDomain)) {
    Write-Output "Compliant"   
}else{
    $CustomDomain = $DNSArrayDomain | Select-Object -ExpandProperty Domain
    Add-Content -Path $HostsLoc -Value ($CustomDomain)
    $HostsContents = Get-Content $HostsLoc
    if ($HostsContents | Select-String -pattern ($CustomDomain)) { 
        Write-Output "Compliant"   
    }else {
        Write-Output "NonCompliant"
        $ComplianceCheck++
    }
}}
Write-Output "$ComplianceCheck"