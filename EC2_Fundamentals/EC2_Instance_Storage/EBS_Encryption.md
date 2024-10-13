EBS Encryption:
    When you create an encrypted EBS volume, you get the following:
            - Data at rest is encrypted inside the volume
            - All the data in flight moving between the instance and the volume is encrypted
            - All snapshots are encrypted
            - All volumes created from the snapshot
    - Encryption and decryption are handled transparently (yo have nothing to do)
    - Encryption has a minimal impact on latency
    - EBS encryption leverages keys from KMS (AES-256)
    - Copying an unencrypted snapshot allows encryption
    Encryption: Encrypt an unencrypted EBS volume:
        - Create an EBS snapshot of the volume
        - Encrypt the EBS snpashot (using copy)
        - Create new ebs volume from the snapshot ( the volume will also be encrypted )
        - Now you can attach the encrypted volume to the original instance

Steps to encrypt: 
    - Create an EBS snapshot of your EBS volume.
    - Copy the snapshot and tick the option to encrypt the copied snapshot 
    - Then, use the encrypted snapshot to create a new EBS volume