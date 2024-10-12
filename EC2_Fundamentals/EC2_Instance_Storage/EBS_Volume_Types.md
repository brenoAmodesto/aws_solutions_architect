EBS Volumes Types:
    - EBS Volumes come in 6 types:
        - gp2 /gp3 (SSD): General purpose SSD volume that balances price and performance for a wide variety of workloads
        - io1 / io2 Block Express (SSD): Highest-performance SSD volume for mission-critical low-latency or high throughput workloads
        - st1 (HDD): Low cost HDD volume designed for frequently acessed, throughput-intensive workloads
        - sc1 (HDD): Lowest cost HDD volume designed for less frequently accessed workloads
EBS Volumes are characterized in Size | Throughput | IOPS (I/O Ops Per Sec):
    - When in doubt always consult the AWS documentation - it's good!
    - Only gp2/gp3 and io io1/io2 Block Express can be used as boot volumes


EBS Volume Types use cases:
General Purpose SSD
    - Cost effective storage, low-latency
    - System boot volumes, virtual desktops, development and test environments
    - 1GiB - 16 TiB
    - gp3:
        - Baseline of 3,000 IOPS and throughput of 125MiB/s
        - Can increase IOPS up to 16,000 and throughput up to 1000MiB/s independently
    - gp2:
        - Small gp2 volumes can burst IOPS to 3,000
        - Size of the volume and IOPS are linked, max IOPS is 16,000
        - 3 IOPS per GB, means at 5,334 GB we are at the max IOPS

EBS Volume Types use cases:
Provisioned IOPS (PIOPS) SSD:
    - Critical business applications with sustained IOPS performance
    - Or applications that need more than 16,000 IOPS
    - Great for databases workloads (sensitive to storage perf and consistency)
    - io I (4GiB - 16TiB)
        - Max PIOPS: 64,000 for Nitro EC2 instances & 32,000 for other
        - Can increase PIOPS independently from storage size
    - io2 Block Express (4GiB - 64 TiB):
        - Sub-milisecond latency
        - Max PIOPS: 256,000 with an IOPS:GiB ratio of 1,000:1
    - Supports EBS Multi-attach

EBS Volume Types use cases:
Hard Disk Drives (HDD)
    - Cannot be a boot volume
    - 125 GiB to 16 TiB
    - Through put Optimized HDD (st1)
        - Big Data, Data Warehouses, Log processing
        - Max throughput 500 MiB/s - max IOPS 500
    - Cold HDD (sc1):
        - For data that is infrequently acessed
        - Scenarios where lowest cost is important
        - Max throughput 250 MiB/s - Max IOPS 250