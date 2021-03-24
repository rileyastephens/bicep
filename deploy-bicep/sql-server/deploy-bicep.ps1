# Deploy the desired Bicep file
$bicepFile = ".\deploy-bicep\sql-server\sql-server.bicep"
$bicepParametersFile = ".\deploy-bicep\sql-server\parameters.json"

New-AzResourceGroupDeployment `
    -ResourceGroupName "rg-bicep" `
    -TemplateFile $bicepFile `
    -TemplateParameterFile $bicepParametersFile 