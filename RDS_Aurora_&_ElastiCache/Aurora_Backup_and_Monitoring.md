## RDS Backups
- Automated backups:
  - Daily full backup of the database (during the backup window)
  - Transaction logs are backed-up by RDS every 5 minutes
  - => ability to restore to any point in time (from oldest backup to 5 minutes ago)
  - 1 to 35 days of retention, set 0 to disable automated backups
- Manual DB Snapshots
    - Manually triggered by the user
    - Retention of backup for as long as you want

- Trick: in a stopped RDS database, you will still pay for storage. if you plan on stopping it   for a long time, you should snapshot & restore instead


# Aurora Backups

- Automated backups
    - 1 to 35 days (cannot be disabled)
    - point-in-time recovery in that timeframe

- Manual DB Snapshots
    - Manually triggered by the user
    - Retention of backup for as long as you want

RDS & Aurora restore options
- Restoring a RDS / Aurora backup or a snapshot creates a new database
- Restoring MySQL RDS database from S3
    - Create a backup of your on-premises database
    - Store it on amazon s3 (object storage)
    - Restore the backup file onto a new rds instance running mysql
- Restoring MySQL Aurora cluster from S3
    - Create a backup of your on-premises database using Percona XtraBackup
    - Store the backup file on Amazon S3
    - Restore the backup file onto a new Aurora cluster running MySQL

## Aurora Database Cloning
- Create a new Aurora DB cluster from an existing one
- Faster than snapshot & restore
- Uses copy-on-write protocol
    - Initially, the new DB cluster uses the same data volume as the original DB cluster (fast and efficien - no copying is needed)
    - When updates are made to the new DB cluster data, then additional storage is allocated and data is copied to be separated
- Very fast & cost-effective
- Useful to create a "staging" database from a "production" database without impacting the production database
