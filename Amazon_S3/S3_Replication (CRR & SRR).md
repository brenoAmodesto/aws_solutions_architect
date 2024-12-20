# Amazon S3 - Replication (CRR & SRR)
    - Must enable Versioning in source and destination buckets
    - Cross-Region Replication (CRR)
    - Same-region Replication (SRR)
    - Buckets can be in different AWS accounts
    - Copiying is asynchronous
    - Must give proper IAM permissions to S3

- Use cases:
    - CRR - compliance, lower latency access, replication across accounts
    - SRR - log aggregation, live replication between production and test accounts

# Amazon S3 - Replication (Notes)
- After you enable Replication, only new objects are replicated
- Optionally, you can replicate existing objects using S3 Batch Replication
     - Replicates existing objects and objects that failed replication
    
- For DELETE operations
    - Can replicate delete markers from source to target (optional setting)
    - Deletions with a version ID are not replicated (to avoid malicious deletes)

- There is no "chaining" of replication
    - If bucket I has replication into bucket 2, which has replication into bucket 3
    - Then objects created in bucket 1 are not replicated to bucket 3

    