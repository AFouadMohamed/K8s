# AWS Multi-Region Deployment

Let's say you want to create AWS resources in multiple regions. How do you do that?

Easy! Just create separate directories and configure them accordingly.

1. Create a directory for each region.
2. Create your backend resources within each region.
3. Deploy your resources using shared modules where necessary (i.e. networking)