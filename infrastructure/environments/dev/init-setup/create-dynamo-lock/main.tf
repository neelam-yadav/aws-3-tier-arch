provider "aws" {
  region                  = var.region
  shared_credentials_file = var.shared_credentials_file
  profile                 = var.profile
  version                 = ">= 2.32.0"
}

module "dynamodb-lock" {
  source     = "../../../../modules/dynamodb-lock"
  dynamodb_table = "tf_lock_dev"
}

