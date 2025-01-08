# IAM Roles vs Resource-Based Policies
- When you assume a role (user, application or service), you give up your original permissions and take the permissions assigned to the role

- When using a resource-based policy, the principal doesn't have to give up his permissions

- Example: User in account A needs to scan a DynamoDB table in Account A and dump it in an s3 bucket in account b
- Supported by: Amazon S3 buckets, SNS topics, SQS queues, etc...

# Amazon EventBridge - Securtiy
- When a rule runs, it needs permissions on the target
- Resource-based policy: Lambda, SNS, SQS, S3 buckets, API Gateway...
- IAM role: EC2 Auto Scaling, Systems Manager Run Command, ECS task...