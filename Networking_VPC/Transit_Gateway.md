## Transit Gateway
- For having transitive peering between thousands of VPC and on-premises, hub-and-spoke (star) connection

- Regional resource, can work cross-region

- Share cross-account using Resource Access Manager (RAM)

- You can peer Transit Gateways across regions

- Route Tables: limit which VPC can talk with otherVPC

- Works with Direct Connect Gateway, VPN connections

- Supports IP Multicast (not supported by any other AWS service)


## Transit Gateway: Site-to-Site VPN ECMP
- ECMP = Equal-cost multi-path routing
- Routing strategy to allow to forward a packet over multiple best path
- Use case: create multiple Site-to-Site VPN connections to increase the bandwidth of your connnecton to aws