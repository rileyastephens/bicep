/* Create a SQL Server using Bicep */

/* Parameters */
param sqlServerName string
param location string
param sqlAdminUser string
@secure()
param sqlAdminPassword string
param dbName string
param dbSkuName string
param dbSkuTier string
param tags object

module sqlServerModule '../../bicep-modules/sql-server/deploy.bicep' = {
  name: 'bicep-sql-server'
  params: {
    sqlServerName: sqlServerName
    location: location
    sqlAdministratorLogin: sqlAdminUser
    sqlAdministratorLoginPassword: sqlAdminPassword
    resourceTags: tags
  }
}

module sqlDatabase '../../bicep-modules/sql-db/deploy.bicep' = {
  name: 'bicep-sql-db'
  params: {
    sqlServer: sqlServerName
    location: location
    databaseName: dbName
    skuName: dbSkuName
    skuTier: dbSkuTier
    resourceTags: tags
  }
}
