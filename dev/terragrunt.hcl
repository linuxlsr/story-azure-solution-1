include {
  path = find_in_parent_folders()
}

terraform {
  source ="modules/rg"
}
inputs= {
  APPNAME     = "story"
  ENVIRONMENT = "dev"
  REGION      = "westus"
}