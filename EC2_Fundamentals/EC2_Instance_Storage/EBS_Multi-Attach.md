EBS Multi-Attach - io1/io2 family:
    - Attach the same EBS volume to multiple EC2 instances in the same AZ
    - Each instance has full read & write ṕermissions to the high-performance volume
    - Use case:
        - Achieve higher application availability in clustered linux applications (ex:Teradata)
        - Applications must manage concurrent write operations
    - Up to 16 EC2 instances at a time (remeber this for the exam)
    - Must use a file system that's clster-aware (not XFS, EXT4, etc....)