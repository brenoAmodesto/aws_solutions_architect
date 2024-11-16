## Amazon Aurora
- Aurora is a proprietary technology from AWS (not open sourced)
- Postgres and MySQL are both supported as Aurora DB (that means your drivers will work as if - Aurora was a Postgres or MySQL database) 
- Aurora is "AWS cloud optimized" and claims 5x performance improvement over MySQL on RDS, over 3x the performance of Postgres on RDS
- Aurora storage automatically grows in increments of 10gb, up to 128tb
- Aurora can have up to 15 replicas and the replication process is faster than MySQL (sub 10ms replica lag)
- Failover in Aurora is instantaneous. It's HA (High Availability) native.
- Aurora costs more than RDS (20% more) - but is more efficient

## Aurora High Availability and Read Scaling
- 6 copies of your data across 3 AZ:
    - 4 copies out of 6 needed for writes 
    - 3 copies out of 6 need for reads
    - self healing with peer-to-peer replication
    - storage is striped across 100s of volumes
- One aurora instance takes writes (master)
- Automated failover for master in less than 30 seconds
- Master + up to 15 Aurora Read Replicas serve reads
- Support for cross region replication

## Features of Aurora
- Automatic fail-over
- Backup and Recovery
- Isolation and security
- Industry compliance
- Push-button scaling
- Automated Patching with Zero Downtime
- Advanced Monitoring
- Routine Maintenance
- Backtrack: restore data at any point of time without using backups

# Aurora - Custom Endpoints
- Define a subset of Auroar instances as custom endpoint
- Example: Run analytical queries on specific replicas
- The reader Endpoint is generally not used after defining Custom Endpoints


# Aurora Serverless
- Automated database instantiation and auto-scaling based on actual usage
- Good for infrequent, intermittent or unpredictable workloads
- No capacity planning needed 
- Pay per second, can be more cost-effective

# Global Aurora

- Aurora Cross Region Read Replicas:
    Useful for disaster recovery
    Simple to put in place
- Aurora Global Database (recommended):
    1 Primary Region (read / write)
    Up to 5 secondary (read-only) regions, replication lag is less than 1 second
    Up to 16 Read replicas per secondary region
    Helps for decreasing latency
    Promoting another region (for disaster recovery) has an RTO of < 1 minute
    Typical cross-region replication takes less than 1 second

## Aurora Machine Learning
- Enables you to add ML-based predictions to your applications via SQL
- Simple, optimized, and secure integration between Aurora and AWS ML services
- Supported services
    - Amazon SageMaker (use with any ML model)
    - Amazon Comprehend (for sentiment analysis)
- You don't need to have ML experience
- Use cases: fraud detection, ads targeting, sentiment analysis, product recommendations

