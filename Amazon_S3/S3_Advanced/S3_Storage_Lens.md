## S3 - Storage Lens

- Understand, analyze, and optimize storage across entire AWS Organization
- Discover anomalies, identify cost efficiencies, and apply data protection best practices across entire AWS Organization ( 30 days usage & activity metrics)
- Default dashboard or create your own dashboards
- Can be configured to export metrics daily to an S3 bucket (CSV,Parquet)

# Storage Lens - Default Dashboard
- Visualize summarized insights and trends for both free and advanced metrics
- Default dashboard shows Multi-Region and MUlti-Account data
- Preconfigured by Amazon S3
- Can't be deleted, but can be disabled

# Storage Lens - Metrics

- Summary Metrics
    - General insights about your S3 storage
    - StorageBytes, ObjectCount..
    - Use cases: identify the fastest-growing ( or not used) buckets and prefixes

- Cost-Optimization Metrics
    - Provide insights to manage and optimize your storage costs
    - NonCurrentVersionStorageBytes, IncompleteMultipartUploadStorageBytes..
    - Use cases: identify buckets with incomplete multipart uploaded older than 7 days, identify which objects could be transitioned to lower-cost storage class

- Data-Protection Metrics
    - Provide insights for data protection features
    - VersioningEnabledBucketCount, MFADeleteEnabledBucketCount, SSEKMSEnabledBucketCount, CrossRegionREplicationRuleCount...
    - Use cases: identify buckets that aren't following data-protection best practices

- Access-management Metrics
    - Provide insights for S3 Object Ownership
    - ObjectOwnershipBucketOwnerEnforcedBucketCount...
    - Use cases: identify which Object Ownership settings your buckets use

- Event Metrics
    - Provide insights for S3 Event Notifications
    - EventNotificationEnabledBucketCount (Identify which buckets have s3 Event notifications configured)

- Performance Metrics
    - Provide insights for S3 Transfer Acceleration
    - TransferAccelerationEnabledBucketCOunt (Identify which buckets have S3 Transfer Acceleration enabled)

- Activity Metrics
    - Provide insights about how your storage is requested
    - AllRequests, GetRequests, PutRequests, ListRequests, BytesDownloaded...

- Detailed Status Code Metrics
    - Provide insights for HTTP status codes
    - 200OKStatusCount, 403ForbiddenErrorCount, 404NotFoundErrorCount...

## Storage Lens - Free vs. Paid

- Free Metrics
    - Automatically available for all customers
    - Contains around 28 usage metrics
    - Data is available for queries for 14 days
- Advanced Metrics and Recommendations
    - Additional paid metrics and features
    - Advanced Metrics - Activity, Advanced Cost Optimization, Advanced Data Protection, Status code
    - CloudWatch Publishing - Access metrics in CloudWatch without additional charges
    - Prefix Aggregation - Collect metrics at the prefix level
    - Data is available for queries for 15 months