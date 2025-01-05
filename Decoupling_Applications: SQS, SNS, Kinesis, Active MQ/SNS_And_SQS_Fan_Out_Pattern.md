## SNS + SQS: Fan Out

- Push once in SNS, receive in all SQS queues that are subscribers
- Fully decoupled, no data loss
- SQS allows for: data persistence, delayed processing and retries of work
- Ability to add more SQS subscribers over time
- Make sure your SQS queue access policy allows for SNS to write
- Cross-Region Delivery: Works with SQS Queues in other regions

## Application: S3 Events to multiple queues
- For the same combination of: event type (e.g. object create) and prefix (e.g. images/) you can only have one S3 Event rule
- If you want to send the same S3 event to many SQS queues, use fan-out

## Application: SNS to Amazon S3 through Kinesis Data Firehose
- SNS can send to Kinesis and therefore we can have the following solutions architecture:

## Amazon SNS - FIFO Topic
 
 - Similar features as SQS FIFO:
    - Ordering by message Group ID (all messages in the same group are ordered)
    - Deduplication using Deduplication ID or Content Based Deduplication
- Can have SQS Standard and FIFO queues as subscribers
- Limited throughput (same throughput as SQS FIFO)

## SNS FIFO + SQS FIFO: Fan Out
- In case you need fan out + ordering + deduplication

## SNS - Message filtering

- JSON policy used to filter messages sent to SNS topic's subscriptions
- If a subscription doesn't have a filter policy, it receives every message

