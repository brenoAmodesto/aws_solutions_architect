## Amazon ECS - EC2 LaunchType
 - ECS = Elastic Coontainer Service
 - Launch Docker containers on AWS = Launch ECS Tasks on ECS Clusters
 - EC2 Launch Type: you must provision & maintain the infrastructure (the EC2 instances)
 - Each EC2 Instance must run the ECS Agent to register in the ECS Cluster
 - AWS takes care of starting / stopping containers

 ## Amazon ECS - Fargate Launch Type
 - Launch Docker containers on AWS
 - You do not provision the infrastructure
 - It's all Serverless!
 - You just create task definitions
 - AWS just runs ECS Tasks for your based on the CPU / RAM you need
 - To scale, just increase the number of tasks. Simple - no more EC2 instances

 ## Amazon ECS - IAM Roles for ECS
 - EC2 Instance Profile (EC2 Launch Type only):
    - Used by the ECS agent
    - Makes API calls to ECS service
    - Send container logs to CloudWatch Logs
    - Pull Docker Image from ECR
    - Reference sensitive data in secrets manager or SSM Parameter Store
- ECS Task Role:
    - Allows each task to have a specific role
    - Use different roles for the different ECS services you run
    - Task role is defined in the task definition

## Amazon ECS - Load Balancer Integrations
- Application Load Balancer supported and works for most use cases
- Network Load Balancer recommended only for high throughput / high performance use cases, or to pair it with AWS private link
- Classic Load Balancer supported but not recommended (no advanced features - no Fargate)

## Amazon ECS - Data Volumes (EFS)
- Mount EFS file systems onto ECS tasks
- Works for both EC2 and Fargate launch types
- Tasks running in any AZ will share the same data in the EFS file system
- Fargate + EFS = Serverless

- Use cases: persistent multi-AZ shared storage for your containers

- Note:
    Amazon S3 cannot be mounted as a file system
    