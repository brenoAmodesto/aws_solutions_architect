## S3 Event Notifications
• S3:ObjectCreated, S3:ObjectRemoved,
S3:ObjectRestore, S3:Replication…
• Object name filtering possible (*.jpg)
• Use case: generate thumbnails of images
uploaded to S3
• Can create as many “S3 events” as desired
SNS
events
Amazon S3
• S3 event notifications typically deliver events
in seconds but can sometimes take a minute
or longer

Advanced filtering options with JSON rules (metadata, object size,
name...)
• Multiple Destinations – ex Step Functions, Kinesis Streams / Firehose…
• EventBridge Capabilities – Archive, Replay Events, Reliable delivery