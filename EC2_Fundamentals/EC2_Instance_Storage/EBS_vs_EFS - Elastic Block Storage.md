EBS vs EFS - Elastic Block Storage:
    EBS volumes:
        - one instance (except multi-attach io1/io2)
        - are lock at the availability zone (az) level
        - gp2: IO increases if the disk size increases
        - gp3 & io |: can increase IO independently
    To migrate an EBS volume across AZ:
        - Take a snapshot
        - Restore the snapshot to another AZ
        - EBS backups use IO and you shouldn't run
        - them while your application is handling a lot of traffic
    - Root EBS Volumes of instances get terminated by default if the EC2 instance gets terminated. (you can disable that)


EFS - Elastic File System:
    - Mounting 100s of instances across AZ
    - EFS share website files (WordPress)
    - Only for Linux Instances (POSIX)
    - EFS has a higher price point than EBS
    - Can leverage Storage Tiers for cost savings
    - Remember: EFS vs EBS vs Instance Store