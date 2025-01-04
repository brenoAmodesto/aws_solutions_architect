## CloudFront - Cache invalidations

- In case you update the back-end origin, CloudFront doesn't know about it and will only get the refreshed content after the TTL has expired

- However, you can force an entire or partial cache refresh (thus by passing the TTL) by performing a CloudFront invalidation

- You can invalidate all files (*) or a special path (/images/*)


