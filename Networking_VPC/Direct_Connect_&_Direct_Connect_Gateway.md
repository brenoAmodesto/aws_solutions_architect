## Direct Connect (DX)
- Provides a dedicated private connection from a remote network to your VPC
- Dedicated connection must be setup between your DC and AWS Direct Connect locations
- You need to setup a Virtual Private Gateway on yourVPC
- Access public resources (S3) and private (EC2) on same connection
- Use cases:
    - Increase bandwidth throughput - working with large data sets - lower cost
    - More consistent network experience - applications using real-time data feeds
    - Hybrid environments (on prem + cloud)
- Supports both IPV4 and IPV6

## Direct Connect - Connection Types
- Dedicated Connections: 1Gbps, 10 Gbps and 100 Gbps capacity
    - Physical ethernet port dedicated to a customer
    - Request made to AWS first, then completed by AWS Direct Connect Partners
- Hosted Connections: 50mbps, 500 Mbps, to 10 Gbps
    - Connection requests are made via AWS Direct Connect Partners
    - Capacity can be added or removed on demand
    - 1, 2, 5, 10 Gbps available at select AWS Direct Connect Partners

- Lead times are often longer than i month to establish a new connection

## Direct COnnect - Encryption
- Data in transit is not encrypted but is private

- AWS Direct Connect + VPN provides an IPsec-encrypted private connection

- Good for an extra level of security, but slightly more complex to put in place