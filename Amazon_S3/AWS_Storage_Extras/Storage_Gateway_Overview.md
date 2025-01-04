## Hybrid Cloud for Storage

- AWS is pushing for "hybrid cloud"
    - Part of your infrastructure is on the cloud
    - Part of your infrastructure is on-premises
- This can be due to
    - Long cloud migrations
    - Security requirements 
    - Compliance requirements
    - IT strategy
- S3 is a proprietary storage technology (unlike EFS / NFS), so how do you expose the S3 data on-premises?
- AWS Storage Gateway!


## AWS Storage Gateway
-  Bridge between on-premises data and cloud data
- Use cases:
    - Disaster recovery
    - Backup & restore
    - tiered storage
    - on-premises cache & low-latency files acces
- Types of storage gateway:
    - S3 File Gateway
    - FSx File Gateway
    - Volume Gateway
    - Tape Gateway

## Amazon S3 File Gateway
- Configure S3 buckets are acessible using the NFS and SMB protocol
- Most recently used data is cached in the file gateway
- Supports S3 standard, S3 Standard IA, S3 One Zone A, S3 Intelligent Tiering
- Transition to S3 Glacier using a lifecycle policy
- Bucket access using IAM roles for each File Gateway
- SMB Protocol has integration with Active Directory (AD) for user authentication

## Amazon FSx File Gateway
- Native Access to Amazon FSx for Windows File Server
- Local cache for frequently accessed data
- Windows native compatibility (SMB, NTFS, Active Directory...)
- Useful for group file shares and home directories

## Volume Gateway
- Block storage using iSCSI protocol backed by S3
- Backed by EBS snapshots wich can help restore on-premises volumes!
- Cached volumes: low latency access to most recent data
- Stored volumes: entire dataset is on primese, scheduled backups to S3

## Tape Gateway
- Some companies have backup processes using physical tapes(!)
- With Tape Gateway, companies use the same processes but, in the cloud
- Virtual Tape Library (VTL) backed by Amazon S3 and Glacier
- Back up data using existing tape-based processes (and iSCSI interface)
- Works with leading backup software vendors