## What is DNS?

- Domain Name System which translates the human friendly   hostnames into the machine ip addreses
- www.google.com => 172.217.18.36
- DNS is the backbone of the internet
- DNS uses hierarchical naming structure

## DNS terminologies:
- Domain Registrar: Amazon Route 53, GoDaddy...
- DNS Records: A, AAAA, CNAME, NS, ...
- Zone File: Contains DNS records
- Name Server: resolves DNS queries (Authoritative or Non-authoritative)
- Top Level Domain (TLD): .com, .us, .in, .gov, .org, ...
- Second Level Domain (SLD): amazon.com, google.com, ...

##  Amazon Route 53
- A highly available, scalable, fully managed and Authoritative DNS
    - Authoritative = the customer (you)
    can update the DNS records
- Route 53 is also a Domain registrar
- Ability to check the health of your resources
- The only aws service which provides 100% availability SLA
- Why Route 53? 53 is a reference to the traditional DNS port


## Route 53 Records

- How you want to route traffic for a domain
- Each record contains:
        Domain/subodmain Name - e.g, example.com
        RecordType - A or AAAA
        value - e.g, 12.34.56.78
        Routing Policy - how Route 53 responds to queries
        TTL - amount of time the record cached at dns Resolvers
- Route 53 supports the following DNS record types:
    -(must know) A / AAAA / CNAME / NS
    - (advanced) CAA / DS / MX / NAPTR/ PTR /SOA /TXT /SPF /SRV