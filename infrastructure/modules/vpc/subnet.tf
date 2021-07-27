//Public Web Subnets
resource "aws_subnet" "pub_web_subnet" {
  count = "${length(var.public_subnet_availability_zones)}"
  vpc_id = "${aws_vpc.main_vpc.id}"
  cidr_block = "${element(var.public_web_subnet_cidr, count.index)}"
  availability_zone = "${element(var.public_subnet_availability_zones, count.index)}"
  map_public_ip_on_launch = true

  tags = {
    Name = "Pub-Web-Subnet-${element(var.public_subnet_availability_zones, count.index)}"
  }
}

//Private app subnets
resource "aws_subnet" "pri_app_subnet" {
  count = "${length(var.private_subnet_availability_zones)}"
  vpc_id = "${aws_vpc.main_vpc.id}"
  cidr_block = "${element(var.private_app_subnet_cidr, count.index)}"
  availability_zone = "${element(var.private_subnet_availability_zones, count.index)}"
  tags = {
    Name = "Pri-App-Subnet-${element(var.private_subnet_availability_zones, count.index)}"
  }
}

//Private db subnets
resource "aws_subnet" "pri_db_subnet" {
  count = "${length(var.private_subnet_availability_zones)}"
  vpc_id = "${aws_vpc.main_vpc.id}"
  cidr_block = "${element(var.private_db_subnet_cidr, count.index)}"
  availability_zone = "${element(var.private_subnet_availability_zones, count.index)}"
  tags = {
    Name = "Pri-db-Subnet-${element(var.private_subnet_availability_zones, count.index)}"
  }
}
