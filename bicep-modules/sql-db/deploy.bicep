/* Create a database to attach to an already deployed SQL server */

/* Parameters */
param sqlServer string
param databaseName string
param location string
param skuName string
param skuTier string
param resourceTags object

resource database 'Microsoft.Sql/servers/databases@2020-02-02-preview' = {
  name: '${sqlServer}/${databaseName}'
  location: location
  sku: {
    name: skuName
    tier: skuTier
  }
  properties: {}
  tags: resourceTags
}

resource tde 'Microsoft.Sql/servers/databases/transparentDataEncryption@2017-03-01-preview' = {
  name: '${database.name}/current'
  properties: {
    status: 'Enabled'
  }
}
