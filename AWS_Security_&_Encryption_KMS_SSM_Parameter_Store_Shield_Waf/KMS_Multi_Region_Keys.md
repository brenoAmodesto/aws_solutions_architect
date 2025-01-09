## KMS Multi-Region Keys
- Identical KMS keys in different AWS Regions that can be used interchangeably
- Multi-Region keys have the same key ID, key material, automatic rotation..

- Encrypt in one Region and decrypt in other Regions
- No need to re-encrypt or making cross-Region API calls

- KMS Multi-Region are NOT global (Primary + Replicas)
- Each Multi-Region key is managed independently

- Use cases: global client-side encryption, encryption on Global DynamoDB, Global Aurora

## DynamoDB Global Tables and KMS Multi Region Keys Client-Side encryption

- We can encrypt specific attributes client-side in our dynamoDB table using the Amazon DynamoDB encryption client

- Combined with Global Tables, the client-side encrypted data is replicated to other regions

- If we use a multi-region key, replicated in the same region as the DynamoDB Global table, then clients i these regions can use low latency API calls to KMS in their region to decrypt the data client-side

- Using client-side encryption we can protect specific fields and guarantee only decryption if the client has access to an API key

## Global Aurora and KMS Multi-Region Keys Client-Side encryption

- We can encrypt specific attributes client-side in our Aurora table using the AWS encryption SDK
- Combined with Aurora Global Tables, the client-side encrypted data is replicated to other regions
- If we use a multi-region key, replicated in the same region as the Global Aurora DB, then clients in these regions can use low-latency API calls to KMS in their region to decrypt the data client-side
- Using client-side encryption we can protect specific fields and guarantee only decryption if the client has access to an API key, we can protect specific fields even from database admins