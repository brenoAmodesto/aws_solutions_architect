## On-premise strategy with AWS

- Ability to download Amazon Linux 2 AMI as a VM (.iso format)
    - VMWare, KVM, VirtualBox (OracleVM), Microsoft Hyper-V
- VM Import / Export
    - Migrate existing applications into EC2
    - Create a DR repository strategy for your on-premises VMs
    - Can export back the VMs from EC2 to on-premises
- AWS Application Discovery Service
    - Gather information about your on-premises servers to plan a migration
    - Server utilizization and dedpendency mappings
    - Track with AWS Migration Hub
- AWS Database Migration Service (DMS)
    - replicate On-premise => AWS, AWS => AWS, AWS=> On-premise
    - Works with various database technologies (Oracle,MySQL,DynamoDB,etc..)
- AWS Server Migration Service (SMS)
    - Incremental replication of on-premises live servers to AWS