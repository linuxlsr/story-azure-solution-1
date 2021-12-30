terraform {
  source ="../modules/rg"
  extra_arguments "common_vars" {
    commands = ["plan", "destroy"]
    arguments = [
    "-var-file=${get_terragrunt_dir()}/../dev.tfvars"
    ]
  }
}

