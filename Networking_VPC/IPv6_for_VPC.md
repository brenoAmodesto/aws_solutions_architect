## What is IPv6?

- IPv4 designed to provide 4.3 billions addresses (they'll be exhausted soon)

- IPv6 is the successor of IPV4
- IPv6 is designed to provide 3.4 x 1038 unique ip addresses
- Every IPv6 address in AWS is public and internet-routable (no private range)
- Format -> x.x.x.x.x.x.x (x is hexadecimal, range can bem from 0000 to ffff)
- Examples: 
   - 2001:db8:3333:4444:5555:6666:7777:8888
- • 2001:db8:3333:4444:cccc:dddd:eeee:ffff
- • :: è all 8 segments are zero
- • 2001:db8:: è the last 6 segments are zero
- • ::1234:5678 è the first 6 segments are zero
- • 2001:db8::1234:5678 è the middle 4 segments are zero

## IPv6 in VPC
- IPv4 cannot be disabled for your VPC and subnets
- You can enable IPv6 (they're public ip addresses) to operate in dual-sack mode
- Your EC2 instances will get at least a private internal IPv4 and a public IPv6
- They can communicate using either IPv4 or IPv6 to the internet through an internet Gateway

## IPv6 Troubleshooting
- IPv4 cannot be disabled for your VPC and subnets
- So, if you cannot launch an EC2 instance in your subnet
    - It's not because it cannot acquire an IPv6 (the space is very large)
    - It's because there are no available IPv4 in your subnet
- Solution: create a new IPv4 CIDR in your subnet
