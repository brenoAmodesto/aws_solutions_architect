EC2 Hibernate
    We know we can stop, terminate instances
        Stop - the data on disk (EBS) is kept intact in the next start
        Terminate - any EBS volumes (root) also set-up to be destroyed is lost
    
    On start, the following happens:
        First start: the OS boots & the EC2 User Data script is run
        Following starts the OS boots up
        Then your application starts, caches get warmed up, and that can take time
    
    Introducing EC2 Hibernate:
        The in-memory (RAM) state is preserved
        The instance boot is much faster!
        (the OS is not stopped / restarted)
        Under the hood: the RAM state is written to a file in the root EBS volume
        The root EBS volume must be encrypted
    
    Use cases:
        Long-running processing
        Saving the RAM state
    
    Good to know
        Supported Instance Families - C3, C4, C5, I3, M3, M4, R3, R4, T2, T3
        Instance RAM Size - must be less than 150 gb
        Instance Size - not supported for bare metal instances
        AMI - Amazon Linux 2, Linux AMI, Ubuntu, RHEL, CentOS & Windows
        C2 Hibernate, the EC2 Instance Root Volume type must be an EBS volume and must be encrypted to ensure the protection of sensitive content.

    