`Block-TikTok-Domain-Remediation.ps1` will check and modify the local system host file to block tiktok. It can be run manually on the machine with administrator credentials.
The intent of this file is to be run in the environments where MECM and AD are not available for windows machines. Examples could include Desktop Central, Citrix, or off domain machines.
This script will output Compliant or Non Compliant for the purpose of bulding a detection script to know if the script was successful.
