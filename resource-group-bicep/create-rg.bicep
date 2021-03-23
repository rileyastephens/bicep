/* Create a Resource Group using Bicep */

/* Parameters */
param rgName string
@allowed([
  'East US'
  'East US 2'
  'Central US'
])
param location string
param tags array

module resourceGroup './bicep-modules/resource-group/create-rg.bicep' = {
  
}
