## CloudFront - Cache invalidations

- In case you update the back-end origin, CloudFront doesn't know about it and will only get the refreshed content after the TTL has expired

- However, you can force an entire or partial cache refresh (thus by passing the TTL) by performing a CloudFront invalidation

- You can invalidate all files (*) or a special path (/images/*)

## Global users for our application

- You have deployed an application and  have global users who want to access it directly
- They go over the public internet, which can add a lot of latency due to many hops
- We wish to go as fast as possible through AWS network to minimize latency

## Unicast IP vs Anycast IP

- Unicast IP: one server holds one ip address
- Anycast IP: all servers hold the same ip address and the client is routed to the nearest one
