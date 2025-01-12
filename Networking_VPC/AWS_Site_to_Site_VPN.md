## AWS Site-to-Site VPN
- Virtual Private Gateway (VGW)
    - VPN concentrator on the AWS side of the VPN connection
    - VGW is created and attached to the VPC from which you want to create the Site-to-Site VPN connection
    - Possibility to customize the ASN (Autonomous System Number)
- Customer Gateway (CGW)
    - Software application or physical device on customer side of the VPN connection

## Site-to-Site VPN Connections
- Customer Gateway Device (On-premises)
    - What IP address to use?
        - Public internet-routable IP address for your customer gateway device
        - If it's behind a NAT, device that's enabled for NAT traversal (NAT-T), use the public IP address of the NAT device
- Important step: enable Route Propagation for the virtual private gateway in the route table that is associated with your subnets

- If you need to ping your EC2 instances from on-premises, make sure you add the ICMP protocol on the inbound of your security groups

## AWS VPN CloudHub
    - Provide secure communication between multiple sites, if you have multiple VPN connections
    - Low-cost hub-and-spoke model for primary or secondary network connectivity between diferent locations (VPN only)

    - It's a VPN connection so it goes over the public internet

    - To set it up, connect multiple VPN connections on the same VGW, setup dynamic routing and configure route tables

## Direct Connect (DX)
- Provides a dedicated private connection from a remote network to your VPC
 - Dedicated connection must be setup between your DC and AWS Direct Connect locations
 - You need to setup a virtual Private Gateway on your VPC
 - Access public resources (S3) and private (EC2) on same connection
    - Use Cases:
        - Increase bandwidth throughput - working with large data sets - lower cost
        - More consistent network experience - applications using real-time data feeds
        - Hybrid Environments (on prem + cloud)
- Supports both IPV4 and IPv6