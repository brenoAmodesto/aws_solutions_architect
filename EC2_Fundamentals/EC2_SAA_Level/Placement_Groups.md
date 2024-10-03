Placement Groups:
    sometimes you want to control over the EC2 instance placement strategy
    That strategy can be defined using plaement groups
    Whne you create a placement group, you specify one of the following strategies for the group:
        Cluster: Clusters intances into a low-latency group in a single Availability Zone
        Spread-- spreads instances across underlying hardware (max 7 instances per group per AZ) - critical applications
        Partition--spreads instances across many different partitions(which rely on different sets of racks) within an AZ. Scales to 100s of ec2 instances per group (Hadoop, Cassandra, Kafka)

       Pros: Great network (10 Gbps bandwidth between instances with enhanced networking enabled - recommended)
       Cons: if the az fails, all instances fails at the same time
       Use case: 
            Big Data job that needs to complete fast 