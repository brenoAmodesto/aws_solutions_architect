## AWS Cloud Trail
- Provides governance, compliance and audit for your AWS account
- CloudTrail is enabled by default!
- Get an history of events / API calls made within your AWS Account by:
    - Console
    - SDK
    - CLI
    - AWS Services
- Can put logs from CloudTrail into CloudWatch Logs or S3
- A trail can be applide to All Regions (default) or a single Region.
- If a resource is deleted in AWS, investigate CloudTrail first!

## CloudTrail Events
- Management Events:
    - Operations that are performed on resources in your AWS account
    - Examples:
        - Configuring security (IAM AttachRolePolicy)
        - Configuring rules for routing data (AmazonEC2CreateSubnet)
        - Setting up logging (AWS CloudTrailCreateTrail)
    - By default, data events are not logged (because high volume operations)
    - Amazon S3 object-level activity (ex:GetObject.DeletedObjct.PutObject): can separate Read and Write Events
    - AWS Lambda Function execution activity (the invoke API)
- Data Events:
    - By default, data events are not logged (because high volume operations)
    - Amazon S3 object-level activity(ex: GetObject.DeleteObject.PutObject): can separate Read and Write Events
    - AWS Lambda function execution activity (the invoke API)


## CloudTrail Insights
- Enable CloudTrail Insights to detect unusual activity in your account
    - inaccurate resource provisioning
    - hitting service limits
    - bursts of aws iam actions
    - Gaps in periodic maintenance activity
- CloudTrail Insights analyzes normal management events to create a baseline
- And then continuolsy analyzes write events to detect unusual patterns
    - Anomalies appear in the CloudTrail console
    - Event is sent to Amazon S3
    - An EventBridge event is generated ( for automation needs)
## Cloud Trail Events Retention
- Events are stored for 90 days in CloudTrail 
- To keep events beyond this period, log them to s3 and use athena

