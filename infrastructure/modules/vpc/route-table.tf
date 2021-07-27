// Web subnet route table
resource "aws_route_table" "route_table_pub" {
  vpc_id = "${aws_vpc.main_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }
  tags = {
    Name = "Pub-Route-Table"
  }
}

// Associate route table with Public Web Subnet
resource "aws_route_table_association" "public_sn" {
  count = "${length(var.public_subnet_availability_zones)}"
  subnet_id = "${element(aws_subnet.pub_web_subnet.*.id, count.index)}"
  route_table_id = "${aws_route_table.route_table_pub.id}"
}

// Custom Route table(Private Subnet)
resource "aws_route" "route_table_pri" {
  route_table_id = "${aws_vpc.main_vpc.default_route_table_id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = "${aws_nat_gateway.ngw.id}"
}

// Associate route table with Private Subnets
resource "aws_route_table_association" "pri_sn" {
  count = "${length(var.private_subnet_availability_zones)}"
  subnet_id = "${element(aws_subnet.pri_app_subnet.*.id, count.index)}"
  route_table_id = "${aws_vpc.main_vpc.default_route_table_id}"
}
