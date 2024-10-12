EC2 Instance Store:
    - EBS volumes are network drives with good but "limited" performance
    - If you need a high-performance hardware disk, use EC2 Instance Store

    - Better I/O performance
    - EC2 Instance Store lose their storage if they're stopped (ephemeral)
    - Good for buffer / cache / scratch data / temporary content
    - Risk of data los if hardware fails
    - Backups and replication are your responsibility

from an exam perspective anytime you see very high performance attached for your ec2 instances, think local ec2 instance store