## AWS Control Tower
- Easy way to set up and govern a secure and compliant multi-account AWS environment based on best practices
- AWS Control Tower uses AWS Organizations to create accounts

- Benefits
    - Automate the set up of your environment in a few clicks
    - Automate ongoing policy management using guardrails
    - Detect policy violations and remdiate them
    - Monitor compliance through an interactive dashboard

## AWS Control Tower - Guardrails
- Provides ongoing governance for your Control Tower environment (AWS Accounts)
- Preventive Guardrail - using SCPs (e.g., Restrict Regions across all your accounts)
- Detective guardrail - using AWS Config (e.g., identify untagged resources)