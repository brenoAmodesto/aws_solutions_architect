## Domain Registar vs. DNS Service
- You buy or register your domain name with a Domain registrar typically by paying annual charges (e.g GoDaddy, Amazon Registrar inc,..)
- The Domain Registrar usually provides you with a DNS service to manage your DNS records
- But you can use another DNS service to manage your DNS records
- Example: purchase the domain from GoDaddy and use Route53 to maange your DNS records

## 3rd Party Registrar with Amazon Route 53
- if you buy your domain on a 3rd party registrar, you can still use Route 53 as the DNS Service provider

- 1. Create a Hosted Zone in Route 53
- 2. Update NS Records on 3rd Party website to use Route53 Name Servers

- Domain Registrar != DNS Service
- But every Domain Registrar usually comes with some DNS features
