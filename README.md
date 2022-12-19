# TikTok Remediation

Configuration profiles & scripts in this GitHub repository were written to comply with the directives given by Texas Gov. Abbott and may be applied to all University-owned devices. See [the order](https://gov.texas.gov/news/post/governor-abbott-orders-aggressive-action-against-tiktok)
for more information.

## Reference Domains To Block:

- `tiktokv.com`
- `tiktok.com`
- `tiktokcdn.com`
- `tiktokcdn-us.com`
- `ttwstatic.com`
- `bytedapm.com`

## macOS Devices

**Implementation:** `macOSaddToHostFileV3.sh`

**How It Works:** Modifies the local `hosts` file to point the reference domains to the loopback address 127.0.0.1.

**Deployment:** Jamf Pro, other MDM platforms, or run locally on the device.

## iPadOS, iOS, and tvOS Devices

**Implementation:** `Global - Block TikTok.mobileconfig`

**How It Works:** Restricts the TikTok app, if installed, from launching adds the TikTok domains to a Blocklisted URLs list as part of a content filtering payload to prevent access to the domains from web browsers. There is no App Store app for macOS devices.

**Deployment:** Deploy through Jamf Pro, other MDM platforms, or run locally on the device.

## Linux Devices

**Implementation:** `linuxaddtohostfile.sh`

**How It Works:** Modifies the local `hosts` file to point the reference domains to the loopback address 127.0.0.1.

**Deployment:** Deploy through Salt, Ansible or a similar platform, or run locally on the device.

## Windows Devices

There are several implementations for Windows. See the `README` in each directory under `windows` for specific implementation instructions.

### Windows Store App Removal Script

**Implementation:** `RemoveTikTok.ps1`

**How It Works:** Detects and removes the TikTok Windows Store app. 

**Deployment:** Deploy through Microsoft Endpoint Configuration Manager (MECM), Group Policy, other Windows MDM platforms, or run locally on the device.

### Reference Domains Block Script

**Implementation:** `Block-TikTok-Domain-Remediation.ps1`

**How It Works:** Modifies the local `hosts` file to point the reference domains to the loopback address 127.0.0.1.

**Deployment:** Deploy through Microsoft Endpoint Configuration Manager (MECM), Group Policy, other Windows MDM platofrms, or run locally on the device.

### MECM Configuration Baseline

**Implementation:** `_TS-Block-TikTok-Domain-WorkstationHostsFileEntry.cab`

**How It Works:** Modifies the local `hosts` file to point the reference domains to the loopback address 127.0.0.1.

**Deployment:** Import into Microsoft Endpoint Configuration Manager (MECM) and deploy baseline to managed workstations.

### Group Policy To Block Reference Domains

**Implementation:** `Security - TAMU - Block TikTok Domain.zip`

**How It Works:** Imports Group Policy that blocks the reference domains.

**Deployment:** Import into your Active Directory domain.
