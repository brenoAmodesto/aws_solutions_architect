Networking has two sorts of ips. IPv4 and IPv6
IPv4 is still the most common format used online
IPv6 is newer and solve problems for the Internet of Things(IoT)
IPv4 allows for 3.7 billion different addresses in the public space
IPv4: [0-255].[0-255].[0-255].[0-255].

Public IP:
    
    Public IP means the machine can be identified on the internet (WWW)
    Must be unique across the whole web (not two machines can have the same public IP)
    Can be geo-loacted easy
Elastic IPs
    
    When you stop and then start an EC2 instance, it can change its public ip
    If you need to have a fixed public IP for your instance, you need an Elastic IP
    An elastic IP is a public IPv4 IP you own as long as you don't delete it
    You can attach it to one instance at a time
    With an elastic IP address, you can mask the failure of an instance or software
    by rapidly remapping the addres to another instance in your account
    you can only have 5 Elastic IP in your account (you can ask AWS to increase that).

Overall:
    Try to avoid using Elastic IP:
    They often reflect poor architectural decisions
    Instead, use a random public IP and register a DNS name to it
    Or, as we'll see later, use a Load Balancer and don't use a public IP