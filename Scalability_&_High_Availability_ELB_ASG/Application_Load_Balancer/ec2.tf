module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  ami = data.aws_ami.amzlinux2.id

  for_each = toset(["one", "two"])

  name = "instance-${each.key}"

  instance_type          = "t2.micro"
  vpc_security_group_ids = [module.ec2_sg.id]
  subnet_id              = module.vpc.public_subnets

}