## S3 Replication Encryption Considerations

- Unencrypted objects and objects encrypted with SSE-S3 are replicated by default
- Objects encrypted with SSE-C (customer provided key) can be replicated

- For objects encrypted with SSE-KMS, you need to enable the option
    - Specify which KMS Key to encrypt the objects within the target bucket
    - Adapt the KMS Key Policy for the target key
    - An IAM Role with kms:Decrypt for the source KMS Key and kms:encrypt for the target KMS key
    - You might get KMS throttling errors, in which case yu can ask for a service quotas increase

- You can use multi-region AWS KMS Keys, but they are currently treated as a independent keys by Amazon S3 (the object will still be decrypted and then encrypted)
