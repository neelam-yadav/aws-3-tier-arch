#Create Web EC2 Instance
resource "aws_instance" "web-instance" {
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  count                  = "${length(data.aws_subnet_ids.web-subnet-ids.ids)}"
  vpc_security_group_ids = [data.aws_security_group.aws-web-sgs.id]
  subnet_id              = "${element(data.aws_subnet_ids.web-subnet-ids.ids, count.index)}"

  tags = {
    Name = "Web-Server-Instance-${element(data.aws_subnet_ids.web-subnet-ids.ids, count.index)}"
  }

}
