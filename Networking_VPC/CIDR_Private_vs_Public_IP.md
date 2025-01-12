## Understanding CIDR - IPv4
- Classless Inter-Domain Routing - a method for allocating IP addresses
- Used in Security Groups rules and AWS networking in general
- They help to define an IP address range:
    - We've seen WW.XX.YY.ZZ/32 => one IP
    - We've seen 0.0.0.0/0 => all IPs
    - But we can define: 192.168.0.0/26 => 192.168.0.0 - 192.168.0.63 (64 IP addresses)

## Understanding CIDR - IPv4
- A CIDR consists of two components
- Base IP
    - Represents an IP contained in the range (XX.XX.XX.XX)
    - Example: 10.0.0.0, 192.168.0.0,...
- Subnet Mask
    - Defines how many bits can change in the IP
    - Example: /0, /24, /32
    - Can take two forms:
        - /8 - 255.0.0.0
        - /16 255.255.0.0
        - /24 255.255.255.0
        - /32 255.255.255.255

## Understanding CIDR - Subnet mask
- The subnet Mask basically allows part of the underlying IP to get additional next values from the base IP

- /32 => allows for 1 IP (2!)
- /31 => allows for 2 IP (2")
- /30 => allows for 4 IP (2#)
- /29 => allows for 8 IP (2$)
- /28 => allows for 16 IP (2%)
- /27 => allows for 32 IP (2&)
- /26 => allows for 64 IP (2')
- /25 => allows for 128 IP (2()
- /24 => allows for 256 IP (2))192.168.0.0
- 192.168.0.0 -> 192.168.0.1
- 192.168.0.0 -> 192.168.0.3
- 192.168.0.0 -> 192.168.0.7
- 192.168.0.0 -> 192.168.0.15
- 192.168.0.0 -> 192.168.0.31
- 192.168.0.0 -> 192.168.0.63
- 192.168.0.0 -> 192.168.0.127
- 192.168.0.0 -> 192.168.0.255
- .0/16 => allows for 65,536 IP (2"')192.168.0.0 -> 192.168.255.255
- .0/0 => allows for All IPs0.0.0.0 -> 255.255.255.255

## Understanding CIDR - Little Exercise
- 192.168.0.0/24 = ...?
    - 192.168.0.0 - 192.168.0.255 (256 IPs)
- 192.168.0.0/16 = ...?
    - 192.168.0.0 - 192.168.255.255 (65,536 IPs)
- 134.56.78.123/32= ...?
    - just 134.56.78.123
- 0.0.0.0/0
    - All IPs!

- When in doubt, use this website https://www.ipaddressguide.com/cidr

