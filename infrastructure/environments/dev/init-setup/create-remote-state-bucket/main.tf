provider "aws" {
  region                  = var.region
  shared_credentials_file = var.shared_credentials_file
  profile                 = var.profile
  version                 = ">= 2.32.0"
}

module "remote_state_bucket" {
  source              = "../../../../modules/remote-state-bucket"
  region              = var.region
  remote_state_bucket = var.remote_state_bucket
}

