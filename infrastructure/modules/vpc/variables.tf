variable "vpc_cidr" {
  description = "CIDR for VPC"
}

variable "vpc_name" {
  description = "Name of VPC"
}

variable "public_web_subnet_cidr" {
  description = "CIDR for public web subnet"
}

variable "private_app_subnet_cidr" {
  description = "CIDR for private app subnets"
}

variable "private_db_subnet_cidr" {
  description = "CIDR for private db subnets"
}

variable "private_subnet_availability_zones" {
  description = "Private subnet Availability zones"
}

variable "public_subnet_availability_zones" {
  description = "Public subnet Availability zone"
}

variable "subnet_name" {
  description = "Name of Subnet"
}

variable "igw_name" {
  description = "Name of Internet Gateway"
}

variable "nat_name" {
  description = "Name of Nat Gateway"
}

variable "enable_dns_support" {
  description = "Whether to enable dns support or not"
}

variable "enable_dns_hostnames" {
  description = "Whether to enable dns host name or not"
}

variable "iam_user_name" {
  description = "Name of IAM user"
}

variable "from_port" {
  description = "incoming traffic source port"
}

variable "to_port" {
  description = "incoming traffic destination port"
}
