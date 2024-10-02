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