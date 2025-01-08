## CloudWatch vs CloudTrail vs Config
- CloudWatch
    - Performance monitoring (metrics, CPU, network, etc...) & dashboards
    - Events & Alerting
    - Log aggregation & Analysis
- CloudTrail
    - Record API calls  made within your account by everyone
    - Can define trails for specific resources
    - Global Service
- Config
    - Record configuration changes
    - Evaluate resources against compliance rules
    - Get timeline of changes and compliance

## For an Elastic Load Balancer
- CloudWatch:
    - Monitoring incoming connections metric
    - Visualize error codes as % over time
    - Make a dashboard to get an idea of your load balancer performance
- Config:
    - Track security group rules for the Load Balancer
    - Track configuration changes for the Load Balancer
    - Ensure an SSL certificate is always assigned to the Load Balancer (compliance)
- CloudTrail:
    - Track who made any changes to the Load Balancer with API calls
