## Route 53 - Routing Policies
- Define how route 53 responds to dns queries
- Don't get confused by the word "Routing"
    - it's not the same as Load balancer routing which routes the traffic
    - DNS does not route any traffic, it only responds to the DNS queries
- Route 53 Supports the following Routing Policies
    - Simple 
    - Weighted
    - Failover
    - Latency based
    - Geolocation
    - Multi-Value Answer
    - Geoproximity (using Route 53 Traffic Flow feature)


## Routing Policies - Simple

- Typically, route traffic to a single resource
- Can specify multiple values in the same record
- If multiple values are returned, a random one is chosen by the client
- When Alias enabled, specify only one AWS resource
- Can't be associated with Health Checks