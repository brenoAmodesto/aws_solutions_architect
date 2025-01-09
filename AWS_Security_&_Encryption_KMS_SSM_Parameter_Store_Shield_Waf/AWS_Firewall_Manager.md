## AWS Firewall Manager
- Manage rules in all accounts of an AWS Organization
- Security policy: common set of security rules
    - WAF rules (Application Load Balancer, API Gateways, CloudFront)
    - AWS Shield Advanced (ALB, CLB, NLB, Elastic IP, CloudFront)
    - Security Groups for EC2, Application Load Balancer and ENI resources in VPC
    - AWS Network Firewall (VPC Level)
    - Amazon Route 53 Resolver DNS Firewall
    - Policies are created at the region level

## WAF vs. Firewall Manager vs. Shield
- WAF, Shield and Firewall Manager are used together for comprehensive protection
- Define your web acl rules in waf
- for granular protection of your resources, waf alone is the correct choice
- if you want to use AWS WAF across accounts, accelerate WAF configuration, automate the protection of new resources, use Firewall