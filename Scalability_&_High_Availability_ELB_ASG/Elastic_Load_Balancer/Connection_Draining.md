Connection Draining

Feature naming:
- Connection Draining - for CLB
- Deregistration Delay - for ALB & NLB

- Time to complete "in-flight requests" while the instance is de-registering or unhealthy
- Stops sending new requests to the EC2 instance which is de-registering
- Between 1 to 3600 seconds ( default: 300 seconds)
- Can be disabled (set value to 0)
- Set to a low value if your request are short