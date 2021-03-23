/* Create a Resource Group using Bicep */

/* Parameters */
targetScope = 'subscription'
param rgName string
@allowed([
  'East US'
  'East US 2'
  'Central US'
])
param location string
param tags string

resource resourceGroup 'Microsoft.Resources/resourceGroups@2020-10-01' = {
  name: rgName
  location: location
  tags: tags
  properties: {}
}
