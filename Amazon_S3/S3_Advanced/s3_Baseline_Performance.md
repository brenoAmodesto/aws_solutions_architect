## S3 Baseline performance

- Amazon S3 Automatically scales to high request rates, latency 100-200 ms
- Your application can achieve at least 3,500 PUT/COPY/POST/DELETE or 5,500 GET/HEAD requests per second prefix in a bucket.
- There are no limits to the number of prefixes in a bucket.
- Example (object path => prefix):
    - bucket/folder1/sub1/file => /folder1/sub1/
    - bucket/folder1/sub2/file => /folder1/sub2/
    - bucket/1/file => /1/
    - bucket/2/file => /2/
- If you spread reads across all four prefixes evenly, you can achieve 22,000
requests per second for GET and HEAD

## S3 Performance

- Multi-Part upload:
    - recommended for files > 100mb,must use for files > 5gb
    - Can help parallelize uploads (speed up transfers)

S3 Transfer Acceleration
    - Increase transfer speed by transferring file to an AWS edge location which will forward the data to the S3 bucket in the target region
    - Compatible with multi-part upload

# S3 Performance - S3 Byte-Range fetches
    - Parallelize GETs by requesting specific byte ranges 
    - Better resilience in case of failures
    - Can be used to speed up downloads
    - Can be used to retrieve only partial data