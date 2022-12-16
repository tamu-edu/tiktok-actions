# tiktok-actions
Scripts for implementing Gov. Abbot's TikTok ban

The configuration profiles and scripts in this GitHub repository have been written to comply with remediation directives given by Gov. Abbot and may be applied to all University-owned devices. 

Reference Domains:
tiktokv.com
tiktok.com
tiktokcdn.com
tiktokcdn-us.com
ttwstatic.com
bytedapm.com

macOS Devices:
File Name: macOSaddToHostFileV3.sh
What it does: Modifies the local hostfile to point the reference domains to the loopback address 127.0.0.1.
Execution Methods: Deploy through Jamf Pro, other MDM platforms the device is enrolled and managed, or run locally on the device.

iPadOS, iOS, and tvOS Devices:
Global - Do not Allow TikTok.mobileconfig
What it does: Restricts the TikTok App store app, if installed, from launching. There is no App Store app for macOS devices.
Execution Methods: Deploy through Jamf Pro, other MDM platforms the device is enrolled and managed, or run locally on the device.

Linux Devices:
File Name: linuxaddtohosefile.sh
What it does: Modifies the local hostfile to point the reference domains to the loopback address 127.0.0.1.
Execution Methods: Deploy through Salt, Ansible or similar platform, or run locally on the device.

Windows Devices:

File Name: RemoveTikTok.sh

What it does: Detects and removes the TikTok Windows Store app. 

Execution Methods: Deploy through Microsoft Endpoint Configuration Manager (MECM), Group Policy, other Windows MDM platofrms the devices is enrolled and managed, or run locally on the device.

File Name: #insertscriptname

What it does: Modifies the local hostfile to point the aforementioned domains to the loopback address 127.0.0.1.

Execution Methods: Deploy through Microsoft Endpoint Configuration Manager (MECM), Group Policy, other Windows MDM platofrms the devices is enrolled and managed, or run locally on the device.
