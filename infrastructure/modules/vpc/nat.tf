//EIP for NAT Gateway
resource "aws_eip" "nat_eip" {
  vpc = true
}

//NAT Gateway
resource "aws_nat_gateway" "ngw" {
  allocation_id = "${aws_eip.nat_eip.id}"
  subnet_id = "${aws_subnet.pub_web_subnet.id}"
  depends_on = [aws_internet_gateway.igw]
  tags = {
    Name = "${var.nat_name}"
  }
}
