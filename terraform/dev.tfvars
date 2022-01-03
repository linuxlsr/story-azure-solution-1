ENVIRONMENT = "dev"
APPNAME     = "story"
REGION      = "westus"
CIDR_BLOCK  = ["10.0.0.0/22"]
SUBNET1     = "10.0.0.0/24"
SUBNET2     = "10.0.1.0/24"
TAGS        = { "createdBy" = "terraform" }
resource_group_name = "story-dev-rg"
USER_DISPLAY_NAME = "Joe Shmoe"
USER_PASSWORD     = "testpassword123!"
USER_MAIL_NICKNAME  = "jschmoe"
USER_EMAIL = "jschmoe@example.com"