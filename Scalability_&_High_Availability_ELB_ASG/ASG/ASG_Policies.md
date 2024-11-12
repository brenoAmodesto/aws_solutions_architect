Auto Scaling Groups - Scaling Policies
  - Dynamic Scaling
    - Target TRacking Scaling
        - Simple to set-up
        - Example: i want the average ASG CPU  to stay at around 40%
    - Simple / Step Scaling
        When a cloudWatch alarm is triggered (example cpu > 70%) then add 2 units
        When a cloudWatch alarm is triggred  (examlpe cpu < 30%) then remove
    - Scheduled Scaling
        - anticipate a scaling based on known usage patterns
        - Example: increase the min capacity to 10 at 5 pm on fridays


Good metrics to scale on:
    - CPUUtilization: average cpu utilization across your instances
    - RequestCountPerTarget: to make sure th enumber of requests per EC2 instances is stable
    - Average network in / out (if you're application is network bound)
    - Any custom metric ( that you push using cloudwatch )

Auto Scaling Groups - Scaling Cooldowns
    - After a scaling activity happens, you are in the cooldown period (default 300 seconds)
    - During the cooldown period, the asg will not launch or terminate additional instances ( to allow for metrics to stabilize)
    - Advice: use a ready-to-use AMI to reduce configuration time in order to be serving request faster and reduce the cooldown period
