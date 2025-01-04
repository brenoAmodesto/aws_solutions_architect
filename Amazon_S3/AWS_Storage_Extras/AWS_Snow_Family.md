## AWS Snow Family
- Highly-secure, portable devices to collect and process data at the edge, and migrate data into and out of AWS

## Snow Family - Usage process
- 1 Request snowball devices from the AWS console for delivery
- 2 Install the snowball client / AWS OpsHub on your servers
- 3 Connect the snowball to your servers and copy files using the client
- 4 Ship back the device when you're done (goes to right AWS facility)
- 5 Data will be loaded into an S3 bucket
- 6 Snowball is completely wiped

# What is edge computing
- Process data while it's being created on an edge location
- A truck on the road, a ship on the sea, a mining station underground
- These locations may have limited internet and no access to computing power
- We setup a Snowball Edge / Snowcone device to do edge computing
    - Snowcone: 2 CPUs, 4 GB of memory, wired or wireless access
    - Snowball Edge Compute Optimized (dedicated for that use case) & Storage Optimized
    - Run EC2 Instances or Lambda functions at the edge
Use cases: preprocess data, machine learning, transcoding media