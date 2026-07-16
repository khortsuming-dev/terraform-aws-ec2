# Terraform AWS EC2 Deployment 🚀

Provision an AWS EC2 instance using Terraform with automated configuration, security controls, and a static Elastic IP.

This project demonstrates Infrastructure as Code (IaC) using Terraform to create and manage AWS resources.

---

## Architecture

```
                  Internet
                      |
                      |
                Elastic IP
                      |
                      |
              Elastic IP Association
                      |
                      |
                   EC2 Instance
                      |
                      |
              Security Group
             (SSH + HTTP access)
                      |
                      |
                  Nginx Server
```

---

## AWS Resources Created

- EC2 Instance
- Security Group
- Elastic IP
- Elastic IP Association

---

## Terraform Features Demonstrated

- Infrastructure as Code using Terraform
- AWS provider configuration
- Terraform variables
- Terraform outputs
- Terraform state management
- AWS data sources
- Resource dependencies
- EC2 user data automation
- Security Group configuration
- Elastic IP allocation and association

---

## Project Structure

```
terraform-aws-ec2/
│
├── provider.tf              # AWS provider configuration
├── variables.tf             # Input variables
├── data.tf                  # Existing AWS resources lookup
├── ec2.tf                   # EC2 instance configuration
├── security_group.tf        # Security group rules
├── elastic_ip.tf            # Elastic IP configuration
├── outputs.tf               # Terraform outputs
├── user_data.sh             # EC2 bootstrap script
├── terraform.tfvars         # Variable values
├── README.md
└── .gitignore
```

---

## Deployment Steps

### 1. Configure AWS credentials

```bash
aws configure
```

Verify:

```bash
aws sts get-caller-identity
```

---

### 2. Initialize Terraform

```bash
terraform init
```

---

### 3. Validate configuration

```bash
terraform validate
```

---

### 4. Review execution plan

```bash
terraform plan
```

---

### 5. Deploy infrastructure

```bash
terraform apply
```

---

### 6. Access EC2 instance

SSH:

```bash
ssh -i <key.pem> ec2-user@<elastic-ip>
```

---

## Nginx Deployment

The EC2 instance automatically installs Nginx using Terraform user data.

`user_data.sh`

```bash
#!/bin/bash

apt update -y
apt install nginx -y

systemctl start nginx
systemctl enable nginx

echo "<h1>Hello Terraform 🚀</h1>" > /var/www/html/index.html
```

After deployment:

```
http://<elastic-ip>
```

Expected output:

```
Hello Terraform 🚀
```

---

## Cleanup

To remove all AWS resources:

```bash
terraform destroy
```

---

## Future Improvements

- [ ] Add remote Terraform backend using S3
- [ ] Add DynamoDB state locking
- [ ] Add IAM Role for EC2
- [ ] Add CloudWatch monitoring
- [ ] Add Application Load Balancer
- [ ] Add Auto Scaling Group
- [ ] Create multi-environment setup (dev/staging/prod)
