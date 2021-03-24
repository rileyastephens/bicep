$location = "centralus"
$bicepFile = ".\deploy-bicep\single-rg\single-rg.bicep"
$bicepParametersFile = ".\deploy-bicep\single-rg\parameters.json"

New-AzDeployment `
    -Location $location `
    -TemplateFile $bicepFile `
    -TemplateParameterFile $bicepParametersFile `
    -WarningAction Ignore