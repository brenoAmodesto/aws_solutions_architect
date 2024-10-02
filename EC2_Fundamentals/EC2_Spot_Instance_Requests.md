EC2 Spot Instance Requests
Can get a discount of up to 90% compared to on-demand

Define max spot price and get the instance while current spot price < max 
    The hourly spot price varies based on offer and capacity
    if the current spot price > your max price you can choose to stop or terminate your
    instance with a 2 minutes grace period
Other strategy: Spot Block
    block spot instance during a specified time frame (1 to 6 hours) without interruptions
    in rare situations, the instance may be reclaimed

Used for batch jobs, data analysis, or workloads that are resilient to failures
Not great for critical jobs or databases

Spot Fleets
    Spot Fleets = set of spot instances + (optional) on-demand instances
    The Spot Fleet will try to meet the target capacity with price constraints
        define possible launch pools:instance type (m5.large), OS, Availability Zone
        Can have multiple launch pools, so that the fleet can choose
        Spot Fleet stops launching instances when reaching capacity or max cost
    Strategies to allocate spot instances:
        lowestPrice: from the pool with the lowest price( cost optimization, short workload)
        diversified: distributed across all pools ( great for availability, long workloads)
        capacityOptimized: pool with the optimal capacity for the number of instances
        priceCapacityOptimized (recommended): pools with highest capacity available, then select the pool with the lowest price
        best choice for most workload
Spot Fleets allow us to automatically request Spot instances with the lowest price