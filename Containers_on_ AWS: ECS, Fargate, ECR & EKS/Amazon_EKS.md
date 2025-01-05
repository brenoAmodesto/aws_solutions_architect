## Amazon EKS Overview
- Amazon EKS = Amazon Elastic Kubernetes Service
- It is a way to launch managed Kubernetes clusters on AWS
- Kubernetes is an open-source system for automatic deployment, scaling and management of containerized (usually Docker) application
- It's an alternative to ECS, similar goal but different API
- EKS supports EC2 if you want to deploy worker nodes or fargate to deploy serverless containers
- Use case: if your company is already using kubernetes on-premises or in another cloud, and wants to migrate to AWS using kubernetes
- Kubernetes is cloud-agnostic (can be used in any cloud - Azure, GCP..)
- For multiple regions, deploy one EKS cluster per region
- Collect logs and metrics using CloudWatch Container Insights

## Amazon EKS - Node Types

- Managed Node Groups
    - Creates and manages Nodes (EC2 Instances) for you
    - Nodes are part of an ASG managed by EKS
    - Supports On-Demand Spot Instances
- Self-Managed Nodes
    - Nodes created by you and registered to the EKS cluster and managed by an ASG
    - You can use prebuilt AMI - Amazon EKS Optimized AMI
    - Supports On-Demand or Spot Instances
- AWS Fargate
    - No maintenance required; no nodes managed

## Amazon EKS - Data Volumes
- Need to specify StorageClass manifest on your EKS cluster
- Leverages a container storage interface (CSI) compliant driver

- Support for...
- Amazon EBS
- Amazon EFS (works with Fargate)
- Amazon FSx for Lustre
- Amazon FSx for NetApp ONTAP

## AWS App Runner
- Fully managed service that makes it easy to deploy web applications and APIs at scale
- No infrastructure experience required