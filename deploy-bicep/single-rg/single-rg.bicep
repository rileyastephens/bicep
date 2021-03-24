/* Create a Resource Group using Bicep */

/* Parameters */
targetScope = 'subscription'
param rgDeploymentName string
param rgName string
param location string
param tags object

module resourceGroupModule '../../bicep-modules/resource-group/create-rg.bicep' = {
  name: rgDeploymentName
  params: {
    resourceGroupName: rgName
    location: location
    resourceTags: tags
  }
}
