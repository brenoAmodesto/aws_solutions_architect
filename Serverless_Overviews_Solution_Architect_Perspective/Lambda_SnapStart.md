## Lambda SnapStart
    - Improves your lambda functions performance up to 10x at no extra cost for java 11 and above
    - When enabled, function is invoked from a pre-initialized state (no function initialization from scratch)
    - When you publish a new version:   
        - Lambda initializes your function
        - Takes a snapshot of memory and disk state of the initialized function
        - Snapshot is cached for low-latency access
