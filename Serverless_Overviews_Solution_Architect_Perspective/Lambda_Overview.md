## Why AWS Lambda

- Virtual functions - no servers to manage!
- Limited by time - short executions
- Run on-demand
- Scaling is automated!

## Benefits of AWS Lambda
- Easy Pricing:
    - Pay per request and compute time
    - Free tier of 1,000,000 AWS Lambda requests and 400,000 GBs of compute time
    - Integrated with the whole AWS suite of services
    - Integrated with many programming languages
    - Easy monitoring through AWS CloudWatch
    - Easy to get more resources per functions (up to 10GB of RAM!)
    - Increasing RAM will also improve CPU and network!

## AWS Lambda language support

- Node.js (JavaScript)
- Python
- Java
- C# (.NET Core) / Powershell
- Ruby 
- Custom Runtime API (community supported, example rust or golang)

- Lambda Container Image
    - The container image must implement the Lambda Runtime API
    - ECS / Fargate is preferred for running arbitrary Docker images


## AWS Lambda Integrations 
- Main ones
- API Gateway
- Kinesis
- DyanmoDB
- S3
- CloudFront
- CloudWatch Events EventBridge
- CloudWatch Logs 
- SNS
- SQS 
- Cognito

##  AWS Lambda Pricing: Example

- You can find overall pricing information here:
    aws.amazon/lambda/pricing
- Pay per calls:
    First 1,000,000 are free
    - 0.20 per 1 milion requests thereafter ($0.0000000002 per request)
- Pay per duration:( in increment of 1 ms)
    - 400,000 GB-seconds of compute time per month for FREE
    - === 400,000 seconds if function is 1 GB RAM
    - == 3,200,000 seconds if function is 128 MB RAM
    - After that $1.00 for 600,000 GB-seconds
- It is usually very cheap to run AWS Lambda so it's very popular


