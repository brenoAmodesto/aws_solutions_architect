## NAT Instnce (outdated, but still at the exam)
- NAT = Network Address Translation
- Allows EC2 instances in private subnets to connect to the internet
- Must be launched in a public subnet
- Must disable ec2 setting: source / destination check
- Must have ELASTIC IP attached to it
- Route Tables must be configured to route trrafic from private subnets to the NAT instance

## NAT Instance - Comments
- Pre-connfigured Amazon Linux AMI is available
    - Reached the end of standard support on  december 31,2020
- Not highly available / resilient setup out of the box
    - You need to create an ASG in multi-az + resilient user data script
- Internet trrafic bandwidth depends on EC2 instance type
- You must manage security group & rules:
    - Inbound:
        - Allow HTTP / HTTPS traffic coming from Private subnets
        - Allow SSH from your home network (access is provided through internet gateway)
    - Outbound:
        - Allow HTTP / HTTPS traffic to the internet
