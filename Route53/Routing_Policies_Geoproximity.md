## Routing Policies - Geoproximity
- Route traffic to your resources based on the geographic location of users and resources
- Ability to shift more trafic to resources based on the defined bias
- To change the size of the geographic region, specify bias values:
    - To expand (1 to 99) - more traffic to the resource
    - To shrink (-1 to -99) - less traffic to the resource
Resources can be:
    - AWS resources (specify aws region)
    - Non-AWS resources (specify Latitude and Longitude)

## You must use route 53 Traffic Flow to use this feature