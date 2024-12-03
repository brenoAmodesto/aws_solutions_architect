## Routing Policies - Weighted 
- Control the % of the requests that go to each specific resource
- Assign each record a relative weight:
- DNS records must have the same name and type
- Can be associated with Health Checks
- Assign a weight of 0 to a record to stop sending traffic to a resource
- if all records have weight of 0, then all records will be returned equally

Use cases: load balancing between regions, testing, new application versions..