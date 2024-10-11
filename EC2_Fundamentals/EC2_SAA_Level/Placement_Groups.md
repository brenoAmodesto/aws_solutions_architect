Placement Groups:
    sometimes you want to control over the EC2 instance placement strategy
    That strategy can be defined using plaement groups
    When you create a placement group, you specify one of the following strategies for the group:
        Cluster: Clusters intances into a low-latency group in a single Availability Zone
        Spread-- spreads instances across underlying hardware (max 7 instances per group per AZ) - critical applications
        Partition--spreads instances across many different partitions(which rely on different sets of racks) within an AZ. Scales to 100s of ec2 instances per group (Hadoop, Cassandra, Kafka)

       Pros: Great network (10 Gbps bandwidth between instances with enhanced networking enabled - recommended)
       Cons: if the az fails, all instances fails at the same time
       Use case: 
            Big Data job that needs to complete fast 
            Data analysis

Placement Groups Spread:
    Pros: Can span across availability Zones
          Reduced risk is simultaneous failure
          EC2 Instances are on different physical hardware
    Cons: 
        Limited to 7 instances per AZ
        per placement group
    Use case:
        Application that needs to maximize high availability
        Critical Applications where each instance must be isolated
        from failure from each other.*/9

Placement Groups Partition:
        Up to 7 partitions per AZ
        Can span across multiple AZs in the same region
        Up to 100s of EC2 instances
        The instances in a partition do not share racks with the instances in the other partitions
        A partition failure can affect many EC2 but won't affect other partitions
        EC2 instances get access to the partition information as metadata
        Use cases: HDFS, HBase, Cassandra, Kafka
