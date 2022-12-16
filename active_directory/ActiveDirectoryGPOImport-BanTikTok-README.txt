The zip file Security - TAMU - Block TikTok Domain.zip contains the group policy settings that can be imported into your active directory domain. The group policy is named Security - TAMU - Block TikTok Domain and it contains a computer configuration start up script. The script add entries to the local systems host file.

How to import into Active Directory

1. Open group policy management and connect to your domain.
2. Create a blank policy named "Security - TAMU - Block TikTok Domain"
3. Right click on the new policy and click import settings.
4. Follow the steps in the import settings wizard
	a. Click Next
	b. Click Next on the Backup GPO step.
	c. Browse to the folder that contains the extracted contents of the zip file Security - TAMU - Block TikTok Domain.zip and click next.
	d. Confirm the gpo named "Security - TAMU - Block TikTok Domain" shows up in the window for backed up gpos. Click Next
	e. Click Next on the Scan Results step.
	f. Click Finish
5. The GPO is now imported and ready to be deployed.
6. Deploy the GPO
	
