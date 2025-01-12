## Default VPC Walkthrough
- All new AWS accounts have a default VPC
- New EC2 instances are launched into the default VPC if no subnet is specified
- Default VPC has internet connectivity and all EC2 inside it have public IPv4 addresses
- We also get a public and a private IPv4 DNS names

## VPC in AWS - IPv4
- VPC = Virtual Private Cloud
- You can have multtiple VPCs in an AWS region (max. 5 per region - soft limit)
- Max. CIDR per VPC is 5, for each CIDR:
    - Min.size is /28 (16 IP addresses)
    - Max.size is /16 (65536 IP addresses)
- Because VPC is private, only the Private IPv4 ranges are allowed:
    - 10.0.0.0 - 10.255.255.255 (10.0.0.0.0/8)
    - 172.16.0.0 - 172.31.255.255 (172.16.0.0/12)
    - 192.168.0.0 - 192.168.255.255 (192.168.0.0/16)
- Your VPC CIDR should NOT overlpa with your other networks (e.g.,corporate)

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