Amazon EFS - Elastic File System
    - Managed NFS (network file system) that can be mounted on many EC2
    - EFS works with ec2 instances in multi-AZ
    - Highly available, scalable, expensive (3x gp2), pay per use
    - Use cases: content management, web serving, data sharing, wordpress
    - Uses security group to control access to EFS
    - Compatible with Linux based AMI(not Windows)
    - Encryption at rest using KMS
    - POSIX file system (~Linux) that has a standard file API
    - File system scales automatically, pay-per-use, no capacity planning!

EFS - Performance & Storage Classes:
    - EFS Scale:
        - 100s of concurrent NFS clients, 10 GB+ /s throughput
        - Grow to Petabyte-scae network file system, automatically
    
    - Performance Mode(set at EFS creation time)
        - General Purpose (default) - latency-sensitive use cases (web server, CMS, etc...)
        - Max I/O - higher latency, throughput, highly parallel (big data, media processing)
    
    - Throughput Mode:
        - Bursting - 1TB - 50MiB/s + burst of up to 100MiB/s
        - Provisioned - set your throughput regardless of storage size, ex: 1 GiB/s for 1 TB Storage
        - Elastic - Automatically scales through put up or down based on your workloads:
            - Up to 3GiB/s for reads and 1GiB/s for writes
            - Used for unpredictable workloads

EFS - Storage Classes:
Storage Tiers (lifecycle management feature - move file after N days)
    - Standard: for frequently accessed files
    - Infrequent access (EFS-IA): cost to retrieve files, lower price to store.
    - Archive: rarely accessed data (few times each year), 50% cheaper
    - Implement lifecycle policies to move files between storage tiers

Availability and durability:
    - Standard: Multi-AZ, great for prod
    - One Zone: One AZ, great for dev, backup enabled by default, compatible with IA (EFS One Zone-IA)
    - Over 90% in cost savings