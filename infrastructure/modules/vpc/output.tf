output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

output "private_app_subnets_id" {
  value = "${aws_subnet.pri_app_subnet.*.id}"
}

output "public_web_subnet_id" {
  value = aws_subnet.pub_web_subnet.id
}

output "private_db_subnet_id" {
  value = aws_subnet.pri_db_subnet.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.igw.id
}

output "nat_gateway_id" {
  value = aws_nat_gateway.ngw.id
}
