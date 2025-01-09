## AMI Sharing Process Encrypted via KMS
1. AMI in Source Account is encrypted with KMS Key from source account
2. Must modify the image attribute to add a Launch Permission which corresponds to the specified target AWS account
3. Must share the KMS keys used to encrypted the snapshot the AMI references with the target account / IAM Roel
4. The IAM Role/User in the target account must have the permissions to DescribeKey, ReEncrypted, CreateGrant, Decrypt
5. When launching an EC2 instance from the AMI, optionally the target account can specify a new KMS key in its own account to re-encrypt the volumes