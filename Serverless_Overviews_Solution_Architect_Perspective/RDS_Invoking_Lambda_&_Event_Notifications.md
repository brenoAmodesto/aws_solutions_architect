## Lambda with RDS Proxy

- If Lambda functions directly access your database, they may open too many connections under high load

- RDS Proxy
    - Improve scalability by pooling and sharing DB connections
    - Improve availability by reducing by 66% the failover time and perserving connections
    - Improve security by enforcing IAM authentication and storing credentials in Secrets Manager

- The Lambda function must be deployed in your VPC, because RDS Proxy is never publicly accessible

## Invoking Lambda from RDS & Aurora
- Invoke Lambda functions from within your DB instance
- Allows you to process data events from within a database
- Supported for RDS for PostgreSQL and Aurora MySQL
- Must allow outbound traffic to your Lambda function from within your DB instance (Public, NAT GW, VPC Endpoints)

- DB instance must have the required permissions to invoke the Lambda function (Lambda Resource-based Policy & IAM Policy)

## RDS Event Notifications

- Notifications that tells information about the DB instance itself (created, stopped)
- You don't have any information about the data itself
- Subscribe to the following event categories: DB instance, DB Snapshot, DB Parameter group, DB security group, RDS Proxy, Custom Engine Version
- Near real-time events (up to 5 minutes)
- Send notifications to SNS or subscribe to events using EventBridge

