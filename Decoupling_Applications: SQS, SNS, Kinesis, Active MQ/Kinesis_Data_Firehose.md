## Kinesis Data Firehose
- Fully managed service, no administration, automatic scaling, serverless
    - AWS:Redshift / Amazon S3 / OpenSearch
    - 3rd party partner: Splunk / MongoDB / DataDog / NewRelic/ ...
    - Custom: send to any HTTP endpoint
- Pay for data going through Firehose
- Near Real Time
    - Buffer interval: 0 seconds (no buffering) to 900 seconds
    - Buffer size: minimum 1MB
- Supports many data formats, conversions, transformations, compression
- Supports custom data transformations using AWS Lambda
- Can send failed or all data to a backup S3 bucket

