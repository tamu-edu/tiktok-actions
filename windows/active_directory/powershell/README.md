# Active Directory PowerShell Implementation

Within Active Directory DNS, this script configures DNS to block DNS forward-lookup resolution of the six TikTok Domains. 

## Prerequisites for Usage

Windows devices must be joined to the Active Directory Domain and/or using that domain's domain controllers for DNS.

- tiktokv.com
- tiktok.com
- tiktokcdn.com
- tiktokcdn-us.com
- ttwstatic.com
- bytedapm.com

For each domain, the script will:

1.  Create an Active Dirctory-integrated primary DNS Zone for the domain that is replicated to all DNS servers within the AD forest - this configures the Active Directory DNS servers to respond authoritatively to DNS queries for the domain, as well as any A records within it.
2.  Create an unnamed A record within that zone within an IPv4 Address of 127.0.0.1 - this blocks resolution of the domain itself (e.g. tiktok.com).
3.  Create an A recored with a name of "*" in that zone with an IPv4 Address of 127.0.0.1 - this blocks resolution for any host (A) records within the zone (e.g. www.tiktok.com).

## Usage

1. Run the script from an elevated Powershell session on a Domain Controller that has the DNS role installed and is is configured as a DNS server for your Active Directory Domain or Forest.
2  Verify that the expected DNS records have been created in your Active Directory DNS using the DNS MMC snap-in.
3. Perform a directed DNS lookup for tiktok.com and the other banned domains using one of your domain controllers as the DNS server to query. If configured correctly, the IP address returned should be 127.0.0.1.
