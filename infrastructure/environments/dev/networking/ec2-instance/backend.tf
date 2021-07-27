provider "aws" {
  region                  = var.region
  shared_credentials_file = var.shared_credentials_file
  profile                 = var.profile
  version                 = ">= 2.32.0"
}

terraform {
  required_version = ">= 0.12.10"
  backend "s3" {
    bucket         = "${var.remote_state_bucket}"
    key            = "vpc.tfstate"
    dynamodb_table = "tf_lock_dev"
    region         = "${var.region}"
    encrypt        = "true"
    profile        = "${var.profile}"
  }
}
