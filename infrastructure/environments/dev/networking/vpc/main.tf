module "vpc" {
  source = "../../../../modules/vpc"
  vpc_name = local.vpc_name
  subnet_name = local.subnet_name
  nat_name = local.nat_name
  igw_name = local.igw_name
  iam_user_name = local.iam_user_name
  vpc_cidr = local.vpc_cidr_block
  enable_dns_hostnames = local.enable_dns_hostnames
  enable_dns_support = local.enable_dns_support
  private_subnet_availability_zones = local.private_subnet_availability_zones
  public_subnet_availability_zones = local.public_subnet_availability_zones
  private_app_subnet_cidr = local.private_app_subnet_cidr
  private_db_subnet_cidr = local.private_db_subnet_cidr
  public_web_subnet_cidr = local.public_web_subnet_cidr
  from_port = local.from_port
  to_port = local.to_port
}
