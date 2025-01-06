## DynamoDB Accelerator (DAX)

- Fully-managed, highly available, seamless in-memory cache for DynamoDB
- Help solve read congestion by caching
- Microseconds latency for cached data
- Doesn't require application logic modification (compatible with existing DynamoDB APIs)
- 5 minutes TTL for cache (default)


## DynamoDB - Stream Processing
- Ordered stream of item-level modifications (create/update/delete) in a table
- Use cases:
    - React to changes in real-time (welcome email to users)
    - Real-time usage analytics
    - Insert into derivative tables
    - Implement cross-region replication
    - Invoke AWS Lambda on changes to your DynamoDB table

## DynamoDB Global Tables
- Make a DynamoDB table acessible with low latency in multiple-regions
- Active-Active replication
- Applications can READ and WRITE to the table in any region
- Must enable DynamoDB Streams as pre-requisite

## DynamoDB - Time To Live (TTL)
- Automatically delete items after an expiry timestamp
- Use cases: reduce stored data by keeping only current items, adhere to regulatory obligations, web session handling..

## DynamoDB - Backups for disaster recovery
- Continuous backups using point-in-time recovery (PITR) 
    - Optionally enabled for the last 35 days
    - Point-in-time recovery to any time within the backup window
    - The recovery process creates a new table
- On-demand backups
    - Full backups for long-term retention, until explicitely deleted
    - Doesn't affect performance or latency
    - Can be configured and managed in AWS Backup (enable cross-region copy)
    - The recovery process creates a new table

## DynamoDB - Integration with Amazon S3

- Export to S3 (must enable PITR)
    - Works for any point of time in the last 35 days
    - Doesn't affect the read capacity of your table
    - Perform data analysis on top of DynamoDB
    - Retain snapshots for auditing
    - ETL on top of S3 data before importing back into DynamoDB
    - Expor in DynamoDB JSON or ION format

- Import from s3
    - Import CSV, DynamoDB Json, or ION FORMAT
    - Doesn't consume any write capacity
    - Creates a new table
    - Import errors are logged in CloudWatch Logs
