# AWS S3 VPC Endpoint – Secure Private Access Using Terraform

##  Project Overview

This project demonstrates a secure AWS architecture for accessing Amazon S3 privately using Terraform.

An EC2 instance is deployed in a private subnet without a public IP address. An S3 Gateway VPC Endpoint enables private connectivity to Amazon S3, while IAM permissions and endpoint policies help enforce least-privilege access.

AWS Systems Manager Session Manager is used to connect to the private EC2 instance. The configuration is validated by downloading and reading a test file from the S3 bucket.

##  Architecture Diagram

<img width="1536" height="1024" alt="Architecture" src="https://github.com/user-attachments/assets/474c773a-f935-45ca-99cd-bef53ac4f216" />


##  Project Objectives

- Build AWS infrastructure using Terraform.
- Deploy an EC2 instance in a private subnet without a public IP.
- Enable private S3 access using an S3 Gateway VPC Endpoint.
- Apply IAM permissions and endpoint policies.
- Access the private EC2 instance using AWS Systems Manager Session Manager.
- Validate S3 access without requiring internet connectivity for S3 traffic.

##  AWS Services & Technologies

- **Terraform** – Infrastructure as Code (IaC)
- **Amazon VPC** – Network isolation
- **Public and Private Subnets** – Network segmentation
- **Route Tables** – Traffic routing
- **Internet Gateway** – Public subnet connectivity configuration
- **Amazon EC2** – Private compute instance
- **Amazon S3** – Object storage
- **S3 Gateway VPC Endpoint** – Private S3 connectivity
- **AWS Systems Manager** – Secure instance access
- **IAM** – Access control
- **Security Groups** – Network traffic control

##  Infrastructure Details

| Resource | Name / Configuration |
|---|---|
| VPC | `dev-vpc` |
| VPC CIDR | `10.0.0.0/16` |
| Public Subnets | `dev-public-1`, `dev-public-2`, `dev-public-3` |
| Private Subnets | `dev-private-1`, `dev-private-2`, `dev-private-3` |
| Public Route Table | `dev-public-rt` |
| Private Route Table | `dev-private-rt` |
| Internet Gateway | `dev-igw` |
| EC2 Security Group | `dev-private-ec2-sg` |
| Endpoint Security Group | `dev-endpoint-sg` |
| S3 Gateway Endpoint | `dev-s3-endpoint` |
| EC2 Instance | `dev-private-ec2` |
| Instance Type | `t3.micro` |
| Private IP | `10.0.11.35` |
| S3 Bucket | `pooja-private-ssm-demo-bucket-123` |
| Test File | `test.txt` |
| AWS Region | `ap-south-1` |

##  Security Implementation

- EC2 is deployed in a private subnet without a public IP address.
- S3 traffic uses the S3 Gateway VPC Endpoint.
- IAM permissions follow the principle of least privilege.
- The endpoint policy restricts access to authorized S3 resources.
- Security groups control network traffic.
- Systems Manager Session Manager provides browser-based access to the private EC2 instance.

##  Implementation Steps

1. Created the VPC and public and private subnets using Terraform.
2. Configured public and private route tables.
3. Created and attached the Internet Gateway.
4. Configured security groups.
5. Created S3 and Systems Manager-related VPC endpoints.
6. Deployed the private EC2 instance.
7. Created the S3 bucket and uploaded `test.txt` using Terraform.
8. Connected to the EC2 instance using AWS Systems Manager Session Manager.
9. Downloaded and read `test.txt` from the S3 bucket to validate connectivity.

##  Validation

The following checks were performed:

- Verified that the VPC and subnets were created.
- Confirmed that the EC2 instance was running without a public IP.
- Verified that the S3 bucket contained `test.txt`.
- Connected to the EC2 instance through Session Manager.
- Downloaded the test file from S3 and verified its contents.

**Result:** Private S3 access was successfully validated through the S3 Gateway VPC Endpoint.


##  Project Documentation

Detailed project documentation, including implementation screenshots and verification steps, is available in the repository.

##  Author

**Pooja Daingade**
