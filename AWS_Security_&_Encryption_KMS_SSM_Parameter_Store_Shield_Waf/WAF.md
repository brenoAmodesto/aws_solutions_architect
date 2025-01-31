# AWS WAF - Web Application
- Protects your web applications from common web exploits (Layer 7)
- Layer 7 is HTTP (vs layer 4 is TCP/UDP)
- Deploy on
    - Application Load Balancer
    - API Gateway
    - CloudFront
    - AppSync GraphQL API
    - Cognito User Pool

# AWS WAF - Web Application Firewall
- Define WEB ACL (Web Access Control List) Rules:
    - IP Set: up to 10,000 IP addresses - use multiple Rules for more IPs
    - HTTP headers, HTTP body, or URI strings protects from common attack - SQL injection and Cross-Site Scripting (XSS)
    - Size constraints, geo-match (block countries)
    - Rate-based rules (to count occurences of events) for DDoS protection

- Web ACL are Regional except for CloudFront
- A rule group is a reusable set of rules that you can add to a web ACL

## WAF - Fixed IP while using WAF with a Load Balancer
- WAF does not support the Network Load Balancer (Layer 4)
- We can use Global Accelerator for fixed IP and WAF on the ALB