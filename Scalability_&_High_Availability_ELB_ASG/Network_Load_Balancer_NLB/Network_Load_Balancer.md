Network Load Balancer (v2):
    - Network load balancers (Layer 4) allow to:
        Forward TCP & UDP traffic to your instances
        Handle millions of request per seconds
        Ultra-low latency
    - NLB has one static IP per AZ, and supports assigning Elastic IP (Helpful for whitelisting specific IP)
    - NLB are used for extreme performance, TCP or UDP traffic
    - Not included in the AWS free tier
    Target Groups:
     - EC2 instances
     - IP Addresses - must be private ips
     - Application Load Balancer
     - Health checks support the TCP, HTTP and HTTPS Protocols