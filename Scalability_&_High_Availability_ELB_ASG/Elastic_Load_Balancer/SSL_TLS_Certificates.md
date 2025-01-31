SSL-TLS - Basics
- An SSL Certificate allows traffic between your clients and your load balancer to be encrypted in transit (in flight encryption)
- SSL refers to secure sockets layer, used to encrypt connections
- Nowadays, TLS certificates are mainly used, but people still refer as SSL
- Public SSL certificates are issued by Certificate Authorities (CA)
- Comodo, Symantec, GoDaddy, GlobalSign, Digicert, Letsencrypt, etc
- SSL  certificates have an expiration date (you set) and must be covered

Load Balancer - SSL certificates
- The load balancer uses an X.509 certificate (SSL/TLS server certificate)
- You can manage certificates using ACM (AWS Certificate Manager)
- You can create upload your own certificates alternatively
- HTTPS listener
    - You must specify a default certificate
    - You can add an optional list of certs to support multiple domains
    - Clients can use SNI (Server Name Indication) to specify the hostname they reach
    - Ability to specify a security policy to support older versions of SSL / TLS (legacy clients)

SSL - Server Name Indication:
- SNI solves the problem of loading multiple SSL certificates onto one web server (to server multiple websites)
- It's a "newer" protocol, and requires the client to indicate the hostname of the target server in the initial SSL handshake
- The server will then find the correct certificate, or return the default one

Note: 
- Only works for ALB & NLB (newer generation), CloudFront
- Does not work for CLB (older gen)

Classic Load Balancer (v1):
  - Support only one SSL certificate
  - Must use multiple CLB for multiple hostname with multiple SSL certificates

Application_Load_Balancer (v2):
 - Support only one SSL certificate
 - Must use multiple CLB for multiple hostname with multiple SSL certificates


Network Load Balancer(v2):
 - Supports multiple listeners with multiple SSL certificates
 - Uses Server Name Indication (SNI) to make it work

