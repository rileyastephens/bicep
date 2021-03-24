# Import the TTK Module
Import-Module .\arm-ttk\arm-ttk\arm-ttk.psd1

# Make sure the latest version of ARM TTK exists in the /arm-ttk folder
#git clone https://github.com/Azure/arm-ttk.git

# Run a az bicep build on all Bicep modules
Get-ChildItem -Path ./bicep-modules/**/* -Filter *.bicep | ForEach-Object { bicep build $_.FullName }

# Test the Bicep modules
Get-ChildItem -Path ./bicep-modules/**/* -Filter *.json | ForEach-Object { Test-AzTemplate -TemplatePath $_.FullName }