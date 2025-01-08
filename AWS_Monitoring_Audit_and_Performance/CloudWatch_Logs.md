## CloudWatch Logs
- Log groups: arbitrary name, usually representing an application
- Log stream: instances within application / log files / containers
- Can define log expiration policies (never expire, 1 day to 10 years...)
- CloudWatch Logs can send logs to:
    - Amazon S3 (exports)
    - Kinesis Data Streams
    - Kinesis Data Firehose
    - AWS Lambda
    - OpenSearch
- Logs are encrypted by default
- Can setup KMS-based encryption with your own keys

## CloudWatch Logs - Sources
- SDK, CloudWatch Logs Agent, CloudWatch Unified Agent
- Elastic Beanstalk: collection of logs from application
- ECS: collection from containers
- AWS Lambda: collection from function logs
- VPC Flow Logs: VPC specific logs
- API Gateway
- CloudTrail based on filter
- Route53: Log DNS queries

## CloudWatch Logs insights
- Search and analyze log data stored in CloudWatch Logs
- Example: find a specific IP inside a log, count occurrences of "ERROR" in your logs...
- Provides a purpose-built query language
    - Automatically discovers fields from AWS services and JSON log events
    - Fetch desired event feilds, filter based on conditions, calculate aggregate statistics, sort events, limit number of events...
    - Can save queries and add them to CloudWatch Dashboards
- Can query Multiple Log Groups in different AWS accounts
- It's a query engine, not a real-time engine

## CloudWatch Logs Subscriptions

- Get a real-time log events from CloudWatch Logs for processing and analysis
- Send to Kinesis Data Streams, Kinesis Data Firehose, or Lambda
- Subscription Filter - Filter which logs are events delivered to your destination