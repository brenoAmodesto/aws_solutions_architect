## VPC - Subnet (IPv4)
- AWS reserves 5 IP addresses ( first 4 & last 1) in each subnet
- These 5 IP addresses are not available for use and can't be assigned to an EC2 instance
- Example: if CIDR block 10.0.0.0/24, then reserved ip addresses are:
    - 10.0.0.0 - Network Address
    - 10.0.0.1 - reserved by AWS for the VPC router
    - 10.0.0.2 - reserved by AWS for maping to Amazon-provided DNS
    - 10.0.0.3 - reserved by AWS for future use
    - 10.0.0.255 - Network broadcast address. AWS does not support broadcast in a VPC therfore the address is reserved
- ExamTIp, if you need 29 IP addresses for EC2 instances:
    - You can't chosse a subnet of size /27 (32 IP addresses, 32 - 5 = 27 < 29>)
    - You need to choose a subnet of size /26 (64 IP addresses, 64 - 5 = 59 < 29)