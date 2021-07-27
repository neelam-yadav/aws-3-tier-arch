## Overview

Terraform scripts to setup 3-tier architecture.

## 3-Tier-Architecture Components
Below are the components:

1. VPC
2. Public subnet for frontend
3. Private Subnet for backend and DB instances
4. ALB
5. NAT Gateway
6. Internet Gateway
7. Security Groups
8. NACL
9. R53
10. IAM


## Directory structure:

    .
    ├── ...
    ├── infrastructure                    # Infrastructure files
    │   ├── environments                  # Terraform configuration files seperated by environments
    │   ├  ├── dev                        # Terraform for dev environment
    ├   ├── modules                       # Terraform reusable modules
    │   └── ...           
    └── ...

