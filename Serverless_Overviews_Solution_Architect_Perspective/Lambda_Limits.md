
## AWS Lambda Limits to Know - per region
- Execution:
    - Memory allocation: 128mb - 10GB (1mb increments)
    - Maximum execution time: 900 seconds (15minutes)
    - Environment variables (4kb)
    - Disk capacity in the "function container" (in /tmp): 512 MB to 10GB
    - Concurrency executions: 1000 ( can be increased )

- Deployment:
    - Lambda function deployment size (compressed .zip): 50MB
    - Size of uncrompressed deployment (code + dependencies): 250MB
    - Can use the /tmp directory to load other files at startup
    - Size of environment variables: 4 KB