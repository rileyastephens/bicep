/* Create a SQL Server using Bicep */

/* Parameters */
param sqlServerDeploymentName string
param sqlServerName string
param location string
param sqlAdminUser string
@secure()
param sqlAdminPassword string
param tags object

module sqlServerModule '../../bicep-modules/sql-server/deploy.bicep' = {
  name: sqlServerDeploymentName
  params: {
    sqlServerName: sqlServerName
    location: location
    sqlAdministratorLogin: sqlAdminUser
    sqlAdministratorLoginPassword: sqlAdminPassword
    resourceTags: tags
  }
}
