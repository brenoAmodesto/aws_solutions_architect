## Lamda by default
- By default, your Lambda function is launched outsied your own VPC (in an AWS-owned VPC)
- Therefore, it cannot access resources in your VPC (RDS,ElastiCache, Internal ELB)

# Lambda in VPC
- You must define the VPC ID, the Subnets and the Security Groups
- Lambda will create an ENI (Elastic Network Interface) in your subnets

