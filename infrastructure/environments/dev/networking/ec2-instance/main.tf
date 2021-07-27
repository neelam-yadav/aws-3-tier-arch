module "ec2-instance" {
  source = "../../../../modules/ec2-instance"
  instance_ami = local.ami
  instance_type = local.instance_type
}
