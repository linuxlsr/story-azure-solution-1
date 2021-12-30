#!/usr/bin/env sh
terraform init
terraform plan -var-file=dev.tfvars -out=test.plan