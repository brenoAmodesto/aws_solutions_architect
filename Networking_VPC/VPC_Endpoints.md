
## VPC Endpoints (AWS PrivateLink)
- Every AWS service is publicly exposed (public URL)
- VPC Endpoints (powered by AWS PrivateLink) allows you to connect to AWS services using a private network instead of using the public internet
- They're redundant and scale horizontally
- They remove the need of IGW, NATGW, to access AWS Services
- In case of issues:
    - Check DNS Setting Resolution in your VPC
    - Check Route Tables
## Types of Endpoints
- Interface Endpoints (powered by PrivateLink)
    - Provisions an ENI(private IP address) as an entry point (must attach a security Group)
    - Supports most AWS services
    - $ per hour + $ per GB of data processed
- Gateway Endpoints
    - Provisions a gateway and must be used as a target in a route table (does not use security groups)
    - Supports both S3 and DynamoDB
    - Free
## Gateway or Interface Endpoint for S3?
- Gateway is most likely going to be preferred all the time at the exam
- Cost: free for Gateway, $ for interface endpoint
- Interface Endpoint is preferred access is required from on-premises (Site to Site VPN or Direct Connect), a different VPC or a different region

## Lamda in VPC accesing DynamoDB
- DynamoDB is a public service from AWS
- Option 1: Access from the public internet
    - Because Lambda is in a VPC, it needs a NAT Gateway in a public subnet and an internet gateway
- Option 2 (better & free): Access from the private VPC network
    - Deploy a vpc gateway endpoint for dynamodb
    - change the route tables
