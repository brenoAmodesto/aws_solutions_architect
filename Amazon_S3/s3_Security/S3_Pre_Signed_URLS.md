

## Amazon S3 - Pre-Signed URLs

- Generate pre-signed URLs using the S3 Console, AWS CLI or SDK URL Expiration
- Users given a pre-signed URL inherit the permissions of the user that generated the URL for GET /PUT
- Examples:
    - Allow only logged-in users to download a premium video from your S3 bucket
    - Allow an ever-changing list of users to download files by generating URLs
    dynamically
    - Allow temporarily a user to upload a file to a precise location in your S3 bucket
