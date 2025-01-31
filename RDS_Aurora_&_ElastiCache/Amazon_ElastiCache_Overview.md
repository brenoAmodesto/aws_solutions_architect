## Amazon ElastiCache Overview
- The same way RDS is to get managed relational databases..
- ElastiCache is to get managed Redis or Memcached
- Caches are in-memory databases with really high performance, low latency
- Helps reduce load off of databases for read intensive workloads
- Helps make your application stateless
- AWS takes care of OS maintenaince / patching, optimizations, setup configuration, failure recovery and backups
- Using ElastiCache involves heavy application code changes

# ElastiCache Solution Architecture - DB Cache

- Application queries ElastiCache, if not available, get from RDS and store in ElastiCache
- Helps relieve load in RDS
- Cache must have an invalidation strategy to make sure only the most current data is used on there

## ElastiCache Solution Architecture - User Session Store
- User logs into any of the application
- The application writes the session data into ElastiCache
- The user hits another instance of our application
- The instance retrieves the data and the user is already logged in

## ElastiCache - Redis vs Memcached
- REDIS
        Multi-AZ with auto failover
        Read Replicas scale reads and have high availability
        Data durability using AOF persistence
        Backup and restore features
        Supports Sets and Sorted Sets

- MEMCACHED
        Multi-node for partitioning of data (sharding)
        No high availability (replication)
        Non persistent
        Backup and restore (Serverless)
        Multi-threaded architecture


# ElastiCache - Cache Security

- ElastiCache supports IAM authentication for Redis
- IAM policies on ElastiCache are only used for AWS API-level-security
- Redis AUTH
        You can set a "password/token" when you create a redis cluster
        This is an extra level of security for your cache (on top of security groups)
        Support SSL in flight encryption
- Memcached
        Supports SASL-based authentication (advanced)
    

# Patterns for ElastiCache
- Lazy Loading: All the read data is cached, data can become stale in cache
- Write Through: adds or update data in the cache when written to a DB (no stale data)
- Session Store: store temporary session data in a cache (using TTL features)

- Quote: There are only two hard things in Computer Science: cache invalidation and naming things

## ElastiCache - Redis Use Case

- Gaming Leaderboards are computationally complex
- Redis Sorted sets guarantee both uniqueness and element ordering
- Each time a new element added, it's ranked in real time then added in correct order