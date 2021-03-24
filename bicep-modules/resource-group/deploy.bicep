/* Create a Resource Group using Bicep */

/* Parameters */
targetScope = 'subscription'
param resourceGroupName string
@allowed([
  'East US'
  'East US 2'
  'Central US'
])
param location string
param resourceTags object

resource resourceGroup 'Microsoft.Resources/resourceGroups@2020-10-01' = {
  name: resourceGroupName
  location: location
  tags: resourceTags
  properties: {}
}

/* Outputs */
output rgName string = resourceGroup.name
