/* Create a SQL Server using Bicep */

/* Parameters */
param sqlServerName string
param location string = resourceGroup().location
param sqlAdministratorLogin string
@secure()
param sqlAdministratorLoginPassword string
param resourceTags object

resource sqlServer 'Microsoft.Sql/servers@2020-08-01-preview' = {
  name: sqlServerName
  location: location
  tags: resourceTags
  properties: {
    administratorLogin: sqlAdministratorLogin
    administratorLoginPassword: sqlAdministratorLoginPassword
    minimalTlsVersion: '1.1'
    version: '12.0'
  }
}

/* Outputs */
output sqlServerName string = sqlServer.name
output sqlServerAdminLogin string = sqlServer.properties.administratorLogin
