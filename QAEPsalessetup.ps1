# Title:
# Authors: Tom Esch, Jansen LeFever, and Cody Whishart
# Date Last Revised: 2/16/2021
# Purpose: Automating client requests for Sales division workstations
# --Removing bloatware
# --Removing distracting apps like games (media players?)
# --Adding Hubspot
# --Adding Slack
# --Adding 

# Precision bloatware removal "appName" = name of application to remove
# Get-AppxPackage *appName* | Remove-AppxPackage

# Total Obliteration 
# Deployment Imaging Servce and Management Nuke - #1 and 2 = active lines
# 1. DISM /Online /Get-ProvisionedAppxPackages | select-string Packagename 
# 2. DISM /Online /Remove-ProvisionedAppxPackage /PackageName:PACKAGENAME
# 3. Replacing PACKAGENAME with the name from the list we generated earlier. Mine was
# 4. DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Xbox.TCUI_1.24.10001.0_neutral_~_8wekyb3d8bbwe

# https://www.maketecheasier.com/remove-bloatware-from-windows10/

# Then there is THIS: https://github.com/Sycnex/Windows10Debloater/tree/master/Individual%20Scripts

# This script will remove the bloatware from Windows 10 when using Remove-AppXPackage/Remove-AppXProvisionedPackage, 
# and then delete specific registry keys that are were not removed beforehand. For best results, this script should be
# ran before a user profile is configured, otherwise you will likely see that apps that should have been removed will
# remain, and if they are removed you will find broken tiles on the start menu.

#https://github.com/Sycnex/Windows10Debloater/blob/master/README.md