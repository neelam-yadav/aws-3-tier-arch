data "aws_security_group" "aws-web-sgs" {
  filter {
    name = "tag:Name"
    values = [var.web-sg]
  }
}

data "aws_security_group" "aws-app-sgs" {
  filter {
    name = "tag:Name"
    values = [var.app-sg]
  }
}

# Fetching subnet details
data "aws_subnet_ids" "web-subnet-ids" {
  vpc_id            = var.vpc_id
  filter {
    name            = "tag:Name"
    values          = ["Pub-Web-Subnet-eu-central-1a", "Pub-Web-Subnet-eu-central-1b"]
  }
}

