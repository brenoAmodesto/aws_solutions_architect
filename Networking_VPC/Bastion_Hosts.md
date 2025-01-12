# Bastion Hosts
- We can use a Bastion HOST to ssh into our private ec2 instances
- The bastion is in the public subnet which is then connected to all other private subnets
- Bastion Host security group must allow inbound from the internet on port 22 from restricted CIDR, for example the public CIDR of your corporation
- Security Group of the EC2 instances must allow the security group of the bastion Host, or the private IP of the bastion host

