## Amazon DynamoDB
- Fully managed, highly available with replication across multiple AZs
- NoSQL database - not a relational database - with transaction support
- Scales to massive workloads, distributed database
- Millions of requests per seconds, trillions of row, 100s of 1TB of storage
- Fast and consistent in performance (single-digit millisecond)
- Integrated with IAM for security, authorization and administration
- Low cost and auto-scaling capabilities
- No maintenance or patching, always available
- Standard & Infrequent Access (IA) Table Class

## DynamoDB - Basics
- DynamoDB is made of Tables
- Each table has a Primary Key (must be decided at creation time)
- Each table can have an infinite number of items (= rows)
- Each item has attributes (can be added over time - can be null)
- Maximum size of an item is 400KB
- Data types supported are:
    - Scalar Types - String, Number, Binary, Boolean, Null
    - DocumentTypes - List, Map
    - SetTypes - String Set, Number Set, Binary Set
- Therefore, in DynamoDB you can rapidly evolve schemas

## Read/Write Capacity Modes
- Control how you manage your table's capacity (read/write throughput)

- Provisioned Mode (default)
    - You specify the number of reads/writes per second
    - You need to plan capacity beforehand
    - Pay for provisioned Read Capacity Unites (RCU) & Write Capacity Units (WCU)
    - Possibility to add auto-scaling mode for RCU & WCU
- On-Demand Mode
    - Read/writes automatically scale up/down with your workloads
    - No capacity planning needed
    - Pay for what you use, more expensive ($$$)
    - Great for unpredictable workloads, steep sudden spikes

