Sticky Sessions (Session Affinity):
- It is possible to implement stickiness so that the same client is always redirected to the same instance behind a load balancer
- This works for Classic Load Balancer; Application Load Balancer, and Network Load Balancer
- The "cookie" used for stickiness has an expiration date you control
- Use case: make sure the user doesn't lose his session data
- Enabling stickiness may bring imbalance to the load over the backend EC2 instances


Sticky Sessions - Cookie Names:
- Application-based Cookies:
- Custom cookie
    - generate by the target
    - can include any custom attributes required by the application
    - cookie name must be specified individually for each target group
    - don't use AWSALB, AWSALBAPP, or AWSALBTG (reserved for use by the ELB)
    - Application cookie:
        - Generated by the load balancer
        - Cookie name is AWSALBAPP
    - Duration-based cookies:
        - Cookie generated by the load balancer
        - Cookie name is AWSALB for ALB, AWSELB for CLB
