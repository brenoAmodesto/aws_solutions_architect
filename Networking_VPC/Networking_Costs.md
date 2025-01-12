## Networking Costs in AWS per GB

- Use Private IP instead of Public IP for good savings and better network performance
- Use same AZ for maximum savings (at the cost of high availability)

## Minimizing egress traffic network cost
- Egress traffic: outbound traffic (from AWS to outside)
- Ingress traffic: inbound traffic - from outside to AWS (typicallly free)

- Try to keep as much internet traffic within AWS to minimze costs
- Direct Connect location that are co-located in the same AWS Region result in lower cost for egress network

## S3 Data Transfer Pricing - Analysis for USA

- S3 ingress: free
- S3 to Internet: $0.09 per GB
- S3 Transfer Acceleration:
    - Faster transfer times (50 to 500% better)
    - Additional cost on top of Data Transfer Pricing: +$0.04 to $0.08 per GB
- S3 to CloudFront: $0.00 per GB
- CloudFront to internet: $0.085 per GB
    - Caching capability (lower latency)
    - Reduce costs assoiciated with S3 Requests Pricing (7x cheaper with CloudFront)
- S3 Cross Region Replication: $0.02 per GB