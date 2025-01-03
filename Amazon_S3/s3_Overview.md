## S3 Overview

- Amazon S3 is one of the main building blocks of AWS
- It's advertised as "infinitely scaling" storage
- Many websites use Amazon S3 as a backbone
- Many AWS services use Amazon S3 as an integration as well

# Amazon S3 Use cases

- Backup and storage
- Disaster Recovery
- Archive
- Hybrid Cloud storage
- Application hosting
- Media hosting
- Data lakes & big data analytics
- Software delivery
- Static website

# Amazon S3 - Buckets

- Amazon S3 allows people to store objects (files) in "buckets" (directories)
- Buckets must have a globally unique name (across all regions all accounts)
- Buckets are defined at the region level
- S3 looks like a global service but buckets are created in a region
- Naming convetion
    - No uppercase, No underscore
    - 3-63 characters long
    - Not an IP
    - Must start with lowercase letter or number
    - Must not start with the prefix xn--
    - Must NOT end with the suffix -s3alias

# Amazon S3 - Objects
- Objects (files) have a Key
- The key is the FULL path:
- s3://mybucket/myfile.txt
- s3://my-bucket/my_folder1/another_folder/my_file.txt

 - The key is composed of prefix + object name
     -s3://my-bucket/my_folder1/another_folder/my_file.txt
    
- There's no concept of "directories" within buckets
      (although the UI will trick you to think otherwise)
    
- Just keys with very long names that contain slashes ("/")

## Amazon S3 - Objects (cont.)

- Object values are the content of the body:
    - Max. Object Size is 5TB (500GB)
    - if uploading more than 5GB, must use "multi-part upload"

- Metadata (list of text key / value pairs - system or user metadata)
- Tags (Unicode key / value pair - up to 10) - usefol for security / lifecycle
- Version ID (if versioning is enabled)
