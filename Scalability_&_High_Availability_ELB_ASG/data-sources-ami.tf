data "aws_ami" "amzlinux2" {
    most_recent = true
    owners = ["amazon"]
    filter {
        name = "name"
        values = ["amzn2-ami-hvm-*-gp2"]
    }
    filter {
        name = "root-device-type"
        values = ["ebs"]
    }
    
    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

    filter {
        name = "architecture"
        values = ["x86_64"]
    }
}


data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "default" {
  vpc_id = data.aws_vpc.default.id
  default_for_az = true
  availability_zone = "sa-east-1a"
}

