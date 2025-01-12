## What is CloudFormation

- CloudFormation is a declarative way of outlining your AWS infrastructure, for any resources (most of them are supported).

- For example, within a CloudFormation template, you say:
    - I want a security group
    - I want two ec2 instances using this sec group
    - I want an s3 bucket
    - I want a load balancer in front of these machines
- Then CloudFormation creates those for you, in the right order, with the exact configuration that you specify

## CloudFormation - Service ROle
- IAM role that allows CloudFormation to create/update/delete stack resources on your behalf
- Give ability to users to create/upadte/delete the stack resources even if they don't have permissions to work with the resources in the stack
- Use cases:
    - You want to achieve the least privilege principle
    - But you don't want to give the user all the required permissions to create the stack resources
- User must have iam:PassRole permissions
