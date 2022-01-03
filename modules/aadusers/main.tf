resource "azuread_user" "user" {
  display_name        = var.USER_DISPLAY_NAME
  password            = var.USER_PASSWORD
  mail_nickname       = var.USER_MAIL_NICKNAME
  user_principal_name = var.USER_EMAIL
}