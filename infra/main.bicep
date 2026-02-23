@description('Name of the Storage Account (must be globally unique)')
param storageAccountName string

@description('Location for all resources (auto uses RG location)')
param location string = resourceGroup().location

@description('Name for the Function App')
param functionAppName string = 'func${uniqueString(resourceGroup().id)}'

//
// STORAGE ACCOUNT
//
resource sa 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    minimumTlsVersion: 'TLS1_2'
    supportsHttpsTrafficOnly: true
    accessTier: 'Hot'
    allowBlobPublicAccess: false
  }
}

//
// APP SERVICE PLAN FOR FUNCTION APP (CONSUMPTION Y1)
//
resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: 'plan-${functionAppName}'
  location: location
  kind: 'functionapp'
  sku: {
    name: 'Y1'
    tier: 'Dynamic'
  }
}

//
// FUNCTION APP
//
resource functionApp 'Microsoft.Web/sites@2022-03-01' = {
  name: functionAppName
  location: location
  kind: 'functionapp,linux'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
    siteConfig: {
      linuxFxVersion: 'Node|18'

    }
  }
}

//
// OUTPUTS
//
output functionAppName string = functionAppName
output storageId string = sa.id
