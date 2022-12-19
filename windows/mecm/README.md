The cab file `_TS-Block-TikTok-Domain-WorkstationHostsFileEntry` contains the configuration item and baseline that can be imported into ConfigMGR. The configuration item contains a detection and remediation script. The remediation script will add entries to the systems local host file.

---

How to import into configuration manager:

1. Open configuration manager console
2. Navigate to `\Assets and Compliance\Overview\Compliance Settings\Configuration Baselines`
3. Right Click on **Configuration Baselines** and select **Import Configuration Data**
4. Follow the import wizard and import the file `_TS-Block-TikTok-Domain-WorkstationHostsFileEntry.cab` that is located in the tiktok-actions\MECM reporsitory.
5. This will create a configuration item and configuration baseline named `_TS-Block-TikTok-Domain-WorkstationHostsFileEntry`
6. You can now deploy the baseline with *allow remediation* enabled.
