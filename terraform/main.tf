module "rg" {
  source      = "../modules/rg"
  APPNAME     = var.APPNAME
  REGION      = var.REGION
  ENVIRONMENT = var.ENVIRONMENT
  TAGS        = var.TAGS
}

module "network" {
  source      = "../modules/network"
  APPNAME     = var.APPNAME
  REGION      = var.REGION
  ENVIRONMENT = var.ENVIRONMENT
  TAGS        = var.TAGS
  CIDR_BLOCK  = var.CIDR_BLOCK
  SUBNET1     = var.SUBNET1
  SUBNET2     = var.SUBNET2
  resource_group_name = module.rg.rg
}

//module "aduser" {
//  source = "../modules/aadusers"
//  USER_DISPLAY_NAME        = var.USER_DISPLAY_NAME
//  USER_PASSWORD            = var.USER_PASSWORD
//  USER_MAIL_NICKNAME       = var.USER_MAIL_NICKNAME
//  USER_EMAIL = var.USER_EMAIL
//}