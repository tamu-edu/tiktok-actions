
function Block-DNSDomain ($Domain) {
    Add-DnsServerPrimaryZone -Name $Domain -ReplicationScope Forest
    Add-DnsServerResourceRecordA -Name "." -IPv4Address 127.0.0.1 -ZoneName $Domain
Add-DnsServerResourceRecordA -Name "*" -IPv4Address 127.0.0.1 -ZoneName $Domain
}

$Domain_List = @("tiktokv.com","tiktok.com","tiktokcdn.com","tiktokcdn-us.com","ttwstatic.com","bytedapm.com")


Foreach  ($Domain in $Domain_List) {
    Block-DNSDomain -Domain $Domain
}
