On-Demand Instances - Short workload, predictable pricing, pay by second
Reserved (1 & 3 years)
    Reserved Instances - long workloads
    Convertible Reserved Instances - long workloads with flexible instances
Saving Plans (1 & 3 years) -commitment to an amount of usage, long workload
Spot Instances - short workloads, cheap, can lose instances (less reliable)
Dedicated Instances - no other customers will share your hardware
Capacity Reservations - reserve capacity in a specific AZ for any duration


EC2 On Demand
Pay for what you use
    Linux or Windows - billing per second, after the first minute
    All other operating systems - billing per hour
Has the highest cost but no upfront payment
No long-term commitment
Recommended for short-term and un-interrupted workloads, where you can't predict how the application will behave

EC2 Reserved instances
Up to 72% discount compared to On-demand
You reserve a specific instance attributes (Instance Type, Region, Tenancy, OS)
Reservation Period - 1 year (+discount) or 3 years (+++discount)
Payment Options - No Upfront (+), Partial Upfront (++), All Upfront(+++)
Reserved instance's Scope - Regional or Zonal (reserve capacity in an AZ)
Recommended for steady-state usage applications (think database)
You can buy and sell in the reserved instance Marketplace

Convertible Reserved Instance
    Can change the EC2 instance type, instance family, OS, scope and tenancy
    Up to 66% discount

EC2 Savings Plans

Get a discount based on long-term usage (up to 72% - same as RIs)
Commit to acertain type of usage ($10/hour for 1 or 3 years)
Usage beyond EC2 Saving Plans is billed at te On-Demand price

Locked to a specific instance family & AWS Region
Flexible across:
    Instance Size (e.g, m5.xlarge, m5.2xlarge)
    OS( Linux, Windows)
    Tenancy (Host, Dedicated, Default)


EC2 Spot Instances
Can get a discount of up to 90% compared to On-demand
Instances that you can "lose" at any point of time if your max price is less than the current spot price
The MOST cost-efficient instances in AWS

Useful for workloads that are resilient to failure
    Batch jobs
    Data analysis
    Image processing
    Any distributed workloads
    Workloads with a flexible start and end time

Not suitable for critical jobs or databases

EC2 Dedicated Hosts

A physical server with EC2 instance capacity fully dedicated to your use
Allows you address compliacne requirements and use your existing server-bound software licenses (per-socket, per-core, pe---VM software licenses)

Purchasing Options:
    On-demand - pay per second for active Dedicated Host
    Reserved - 1 or 3 years (No Upfront, Partial Upfront, All Upfront)

The most Expensive option
Useful for software that have complicated licensing model (BYOL - Bring Your Own License)
Or for companies that have strong regulatory or compliance needs

EC2 Dedicated Instances
Instances run on hardware that's dedicated to you
May share hardware with other instances in same account
No control over instance placement ( can move hardware after Stop/Start)

EC2 Capacity Reservations
Reserve On-Demand instances capacity in a specific AZ for any duration
You always have access to EC2 capacity when you need it
No time commitment (create/cancel anytime), no billing discounts
Combine with regional Reserved Instances and Savings Plans to benefit from billing discounts
You're charged at On-Demand rate wheter you run instances or not

Which purchasing option is right for me?

On demand: coming and staying in resort whenever we like, we pay the full price

Reserved: like planning ahead and if we plan to stay for a long time, we may get a good discount

Savings Plans: pay a certain amount per hour for certain period and stay in any room type

Spot instances: the hotel allows people to bid for the empty rooms and the highest bidder keeps the rooms. You can get kicked out at any time

Dedicated Hosts: We book an entire building of the resort
Capacity Reservations: you book a room for a period with full  price even you don't stay in it