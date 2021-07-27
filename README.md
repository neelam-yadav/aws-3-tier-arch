## Overview

Terraform scripts to setup 3-tier architecture.

## 3-Tier-Architecture Components
Below are the components:

1. VPC
2. Public subnet for frontend
3. Private Subnet for backend and DB instances
4. EC2 instances for frontend and backend servers
5. RDS instance
6. ALB
7. NAT Gateway
8. Internet Gateway
9. Security Groups
10. NACL
11. R53
12. IAM


## Directory structure:

    .
    ├── ...
    ├── infrastructure                    # Infrastructure files
    │   ├── environments                  # Terraform configuration files seperated by environments
    │   ├  ├── dev                        # Terraform for dev environment
    ├   ├── modules                       # Terraform reusable modules
    │   └── ...           
    └── ...

