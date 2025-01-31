## AWS KMS (Key Management Service)
- Anytime you hear "encryption" for an AWS service, it's most likely KMS
- AWS manages encryption keys for us
- Fully integrated with IAM for authorization
- Easy way to control access to your data
- Able to audit KMS Key usage using CloudTrail
- Seamlessly integrated into most AWS services (EBS, S3, RDS, SSM...)
- Never ever store your secrets in plaintext, especially in your code!
    - KMS Key Encryption also avilable through API calls (SDK, CLI)
    - Encrypted secrets can be stored in the code / environment variables

## KMS Keys Types
- KMS Keys is the new name of KMS customer master key
- Symmetric (AES-256 keys)
    - Single encryption key that is used to Encrypt and Decrypt
    - AWS services that are integrated with KMS use Symmetric CMKs
    - YOu never get access to the KMS Key unencrypted (must call KMS API to use)
- Asymmetric (RSA & ECC key pairs)
    - Public (encrypt) and private key (decrypt) pair
    - Used for Encrypt/Decrypt, or Sign/Verify operations
    - The public key is downloadable, but you can't access the Private Key unencrypted
    - Use case: encryption outside of AWS by users who can't call the KMS API

## AWS KMS (Key Management Service)
- Types of KMS Keys:
    - AWS Owned Keys (free): SSE-S3, SSE-SQS, SSE-DDB (default key)
    - AWS Managed Key: free (aws/service-name, example: aws/rds or aws/ebs)
    - Customer managed keys created in KMS: $1 / month
    - Customer managed keys imported: $1 / month
    - + pay for API call to KMS ($0.03 / 10000 CALLS)
- Automatic Key rotation:
    - AWS-managed KMS Key: automatic every 1 year
    - Customer-managed KMS key: (must be enabled) automatic & on-demand
    - Imported KMS Key: only manual rotation possible using alias


## KMS Key Policies

- Control access to KMS keys, "similar" to S3 bucket policies
- Difference: you cannot control access without them

- Default KMS Key Policy:
    - Created if you don't provide a specific KMS Key Policy
    - Complete access to the key to the root user = entire AWS account
- Custom KMS Key Policy:
    - Define users, roles that can access the KMS key
    - Define who can administer the key
    - Useful for cross-account access of your KMS key

## Copying Snapshots across accounts

- 1 Create a Snapshot, encrypted with your own KMS Key (Customer Managed Key)
-  2 Attach a KMS Key Policy to authorize cross-account access
- 3 Share the encrypted snapshot
- 4 (in target) Create a copy of the snapshot, encrypt it with CMK in your account
- 5 Create a volume from the snapshot

