#!/usr/bin/env sh

# az login
# az account set --subscription <sub>
az group create --name mgt-tfstate-rg --location westus --tags CreatedBy=CLI
az storage account create --name tfstatesapb --resource-group mgt-tfstate-rg --location westus --tags CreatedBy=CLI
az storage container create --name tfstatestorage --account-name tfstatesapb --resource-group mgt-tfstate-rg --public-access off --fail-on-exist
az storage container generate-sas --name tfstatestorage --account-name tfstatesapb