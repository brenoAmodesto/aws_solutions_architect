## Network Acces Control List (NACL)

- NACL are like a firewall which control traffic from and to subnets
- One NACL per subnet, new subnets are assigned the Default NACL
- You define NACL Rules:
    - Rules have a number (1-32766), higher precedence with a lower number
    - First rule match will drive the decision
    - Example: if you define #100 ALLOW 10.0.0.10/32 and #200 DENY 10.0.0.1.10/32, the IP address will be allowed because 100 has a higher precedence over 200
    - The last rule is an asterisk (*) and denies a request in case of no rule match
    - AWS recommends adding rules by increment of 100
- Newly created NACLs will deny everything
- NACL are a great way of blocking a specific IP address at the subnet level

## Default NACL
- Accepts everything inbound/outbound with the subnets it's associated with
- Do NOT modify the Default NACL, instead create custom NACLs

## Ephemeral Ports
- For any two endpoints to establish a connection, they must use ports
- Clients connect to a defined port, and expect a response on an ephemeral port
- Different Operating Systems use different port ranges, examples:
    - IANA & MS Windows 10 > 49152 - 65535
    - Many Linux Kernels -> 32768 - 60999

## Security Group vs NACL

- Security Group
    - Operates at the instance level
    - Supports allow rules only
    - Stateful: return traffic is automatically allowed, regardless of any rules
    - All rules are evaluated before deciding whether to allow traffic
    - Applies to an EC2 instance when specified by someone
- NACL
    - Operates at the subnet level
    - Supports allow rules and deny rules
    - Stateless: return traffic must be explicitly allowed by rules (think of ephemeral ports)
    - Rules are evaluated in order (lowest to highest)  when deciding wheter to allow traffic, first match wins
    - Automatically applies to all EC2 instances in the subnet that it's associated with

## 