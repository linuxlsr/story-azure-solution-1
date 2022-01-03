dependencies {
  paths = ["./modules/rg"]
}

remote_state {
  backend = "azurerm"
  config = {
    resource_group_name  = "mgt-tfstate-rg"
    storage_account_name = "tfstatesapb"
    container_name       = "tfstatestorage"
    key                  = "${path_relative_to_include()}/dev.tfstate"
  }
}

generate "provider" {
  path = "./provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF

provider "azurerm" {
  features {}
}

provider "azuread" {}

terraform {
  backend "azurerm" {}
}
EOF
}