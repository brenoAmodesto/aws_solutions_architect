## Route 53 - Health Checks

- HTTP Health Checks are only for public resources
- Health Check => Automated DNS Failover:
    1. Health checks that monitor an endpoint(application, server, other AWS resource)
    2. Health checks that monitor other health checks (Calculated Health Checks)
    3. Health checks that monitor CloudWatch Alarms (full control) e.g, throttles of DynamoDB, alarms on RDS, custom metrics, (helpful for private resources)
- Health Checks are integrated with CW metrics

## Health Checks - Monitor an Endpoint
- About, 15 global health checkers will check the endpoint health
    - Healthy/Unhealthy Threshold - 3 (default)
    - Interval - 30 sec (can set to 10 sec - higher cost)
    - Supported protocol: HTTP, HTTPS and TCP
    - if > 18% of health checkers report the endpoint is healthy, Route 53 considers it healthy, otherwise, it's unhealthy
    - Ability to choose which locations you want Route 53 to use
- Health Checks pass only when the endpoint with the 2xx and 3xx status codes
- Health  Checks can be setup to pass / fail based on the text in the first 5120 bytes of the response
- Configure you router/firewall to allow incoming requests from Route 53 Health Checkers

# Route 53 - Calculated Health Checks
- Combine the results of multiple Health Checks into a single Health Check
- You can use OR, AND, or NOT
- Can monitor up to 256 Child Health Checks
- Specify how many of the health checks need to pass to make the parent pass
- Usage: perform maintenance to your website without causing all health checks to fail

# Health Checks - Private Hosted Zones
- Route 53 Health checkers are outside the VPC
- They can't access private endpoints (private VPC or on-premises resource)
- You can create a CloudWatch Metric and associate a cloudwatch alarm, then create a health check that checks the alarm itself

