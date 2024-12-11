
## Amazon S3 - Security
- User-Based
    - IAM Policies - which API calls should be allowed for a specific user from IAM
- Resource-based
    - Bucket Policies - bucket wide rules from the S3 console - allows cross account
    - Object Access Control List (ACL) - finer grain (can be disabled)
    - Bucket Access Control List (ACL) - less common (can be disabled)
- Note: an IAM principal can access an S3 object if
    - The user IAM permissions ALLOW it OR the resource policy ALLOWS it
    - AND there's no explicit DENY
- Encryption: encrypt objects in Amazon S3 using encryption keys


## S3 Bucket Policies 
- JSON based policies
    - Resources: buckets and objects
    - Effect: Allow / Deny
    - Principal: the account or user to apply the policy to

- Use S3 bucket for policy to:
    - Grant public access to the bucket
    - Force objects to be encrypted at upload
    - Grant access to another account (Cross Account)
