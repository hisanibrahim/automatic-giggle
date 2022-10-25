## Prerequisites
### Login to Azure
az login

### (Optional) Get the details for the currently logged-in user
az ad signed-in-user show

### (Optional) Get Tenant ID
az account list

### Get Subscription ID
az account subscription list

### Create Resource Group
az group create --name automatic-giggle-terraform --location southindia
 
### Create Storage Account (Storage account name must be between 3 and 24 characters in length and use numbers and lower-case letters only)
az storage account create --name agterraformstorage --resource-group automatic-giggle-terraform --location southindia --sku Standard_LRS
 
### Create Storage Account Container
az storage container create --name agterraformstate --account-name agterraformstorage --resource-group automatic-giggle-terraform

### Create Service Principal 
az ad sp create-for-rbac --name automatic-giggle-service-principal --role Contributor --scopes /subscriptions/<SUBSCRIPTION_ID> --sdk-auth

```
{
  "clientId": "2cxxxx-5xxx-4xxx-axxx-6axxxxxxxxxxxx",
  "clientSecret": "6Qxxxxxxxxxxxxxxxxxxxxxxxxxxxxnz",
  "subscriptionId": "0cxxxx-4xxx-4xxx-bxxx-bexxxxxxxxx",
  "tenantId": "97xxxxx-2xxx-4xxx-9xxx-1axxxxxxxxxx",
  "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
  "resourceManagerEndpointUrl": "https://management.azure.com/",
  "activeDirectoryGraphResourceId": "https://graph.windows.net/",
  "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
  "galleryEndpointUrl": "https://gallery.azure.com/",
  "managementEndpointUrl": "https://management.core.windows.net/"
}
```

### Add following as Github action secrets

AZURE_CLIENT_ID: client id value of your service principal
AZURE_CLIENT_SECRET: client secret value of your service principal
AZURE_SUBSCRIPTION_ID: subscription id value of your service principal
AZURE_TENANT_ID: tenant id value of your service principal

