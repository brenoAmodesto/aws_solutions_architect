# AWS Global Accelerator
- Leverage the AWS internal network to route to your application
- 2 Anycast IP are created for your application
- The Anycast IP send traffic directly to edge locations
- The edge locations send the traffic to your application

- Works with elastic ip, ec2 instances, ALB, NLB, public or private
- Consistent performance
    - Intelligent routing to lowest latency and fast regional failover
    - No issue with client cache (because the IP doesn't change)
    - Internal AWS network
- Health Checks
    - Global Accelerator performs a health check of your applications
    - Helps make your application global (failover less than 1 minute for unhealthy)
    - Great for disaster recovery (thanks to the health checks)
- Security
    - Only 2 external IP need to be whitelisted
    - DDoS protection thanks to AWS Shield

## AWS Global Accelerator vs CloudFront

- They both use the AWS global network and its edge locations around the world
- both services integrate with AWS Shield for DDoS protection
- CloudFront
    - Improves performance for both cacheable content (such as image and videos)
    - Dynamic content (such as API acceleration and dynamic site delivery)
    Content is served at the edge

- Global Accelerator
    - Improves performance for a wide range of applications over TCP or UDP
    - Proxying packets at the edge to applications running in one or more AWS Regions.
    - Good fit for non-HTTP use cases, such as gaming (UDP), IoT (MQTT), or voice over IP
    - Good for http use cases that require static ip addresses
    - Good for http use cases tha required deterministic, fast regional failover
