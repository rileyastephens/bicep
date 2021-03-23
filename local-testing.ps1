# Run a az bicep build on all Bicep modules
Get-ChildItem -Path ./bicep-modules/**/* -Filter *.bicep | ForEach-Object { az bicep build --files $_.FullName }

# Make sure the latest version of ARM TTK exists in the /arm-ttk folder
git clone https://github.com/Azure/arm-ttk.git

# Import the TTK Module
Import-Module .\arm-ttk\arm-ttk\arm-ttk.psd1

# Test the Bicep modules
Test-AzTemplate -TemplatePath .\bicep-modules\**\*.json