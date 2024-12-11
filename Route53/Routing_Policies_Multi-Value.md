## Routing-Policies - Multi-Value

- Use when routing traffic to multiple resources
- Route 53 return multiple values/resources
- Can be associated with health checks (return only values for healthy resources)
- Up to 8 healthy records are returned for each Multi-Value query
- Multi-value is not a substitute for having an ELB
