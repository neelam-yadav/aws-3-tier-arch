locals {
  vpc_name = "vpc-main"
  subnet_name = "subnet-main"
  nat_name = "tier_NAT"
  igw_name = "tier-IGW"
  iam_user_name = "service.tier-dev"
  vpc_cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  private_app_subnet_cidr = ["10.0.11.0/24", "10.0.12.0/24"]
  private_db_subnet_cidr = ["10.0.21.0/24", "10.0.22.0/24"]
  public_web_subnet_cidr = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_availability_zones = ["eu-central-1a","eu-central-1b"]
  public_subnet_availability_zones = ["eu-central-1a", "eu-central-1b"]
  from_port = 22
  to_port = 22
}
