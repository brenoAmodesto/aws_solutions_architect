RDS stands for Relational Database Service

it's a managed DB service for DB use SQL as a query language.
it allows you to create databases in the cloud that are managed by AWS:
- Postgres
- MySQL
- MariaDB
- Oracle
- Microsoft SQL Server
- IBM DB2
- Aurora (AWS Proprietary database)

Advantage over using RDS versus deploying db on EC2

RDS is a managed service:
    Automated provisioning, OS patching
    Continuous backups and restore to specific timestamp (Point in Time Restore)!
    Monitoring dashboards
    Read replicas for improved read performance
    Multi AZ setup for DR (Disaster Recovery)
    Maintenance windows for upgrades
    Scaling capability (vertical and horizontal)
    Storage backed by EBS

BUT you can't SSH into your instances

RDS - Storage Auto Scaling
    - Helps you increase storage on your RDS DB instance dynamically
    - When RDS detects you are running out of free database storage, it scales automatically
    - Avoid manually scaling your database storage
    - You have to set Maximum Storage Threshoold (Maximum limit for DB storage)
    - Automatically modify storage if:
        - Free storage is less than 10% of allocated storage
        - Low-storage lasts at least 5 minutes
        - 6 hours have passed since last modification
- Useful for applications with unpredictable workloads
- Supports all RDS database engines