## CNAME vs Alias

- AWS Resources (Load Balancer, CloudFront...) expose an AWS hostname:
    - lb1-1234.us-east-2.elb.amazonaws.com and you want myapp.mydomain.com

- CNAME:
  - Points a hostname to any other hostname. (app.mydomain.com=> blablabla.anything.com)
  - Only for non root domain (aka.something.mydomain.com)
Alias:
    - Points a hostname to an AWS Resource (app.mydomain.com => blablabla.amazonaws.com)
    - Works for root domain and NON ROOT DOMAIN (aka mydomain.com)
    - Free of charge
    - Native health check

## Route 53 - Alias Records
- Maps a hostname to an AWS resource
- An extension to DNS functionality
- Automatically recognizes changes in the resource's IP addresses
- Unlike CNMAE, it can be used for the top node of a DNS namespace (Zone Apex), e.g.:
- Alias Record is always of type A/AAAA for AWS resources (IPV4 / IPV6)

- You can't set the TTL

## Route 53 - Alias Records Targets
- Elastic Load Balancers
- CloudFront Distributions
- API Gateway 
- Elastic Beanstalk environments
- S3 Websistes
- VPC interface Endpoints
- Global Accelerator accelerator
- Route 53 Record in the same hosted zone
- You cannot set an ALIAS record for an EC2 DNS name
