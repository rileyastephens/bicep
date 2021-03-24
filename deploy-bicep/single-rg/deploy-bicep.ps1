# Deploy the desired Bicep file
az bicep build --files .\deploy-bicep\single-rg\single-rg.bicep

$location = "centralus"
$bicepFile = ".\deploy-bicep\single-rg\single-rg.json"
$bicepParametersFile = ".\deploy-bicep\single-rg\parameters.json"

New-AzDeployment `
    -Location $location `
    -TemplateFile $bicepFile `
    -TemplateParameterFile $bicepParametersFile `
    -WarningAction Ignore