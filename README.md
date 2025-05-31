# 🚀 Medusa Backend on AWS ECS with Terraform & GitHub Actions

This project deploys the [MedusaJS](https://medusajs.com) open-source headless commerce backend on **AWS ECS with Fargate**, using **Terraform** for infrastructure as code and **GitHub Actions** for continuous deployment (CD).

---

## 📦 Stack Overview

| Component            | Tech                                      |
|---------------------|-------------------------------------------|
| Container Platform   | AWS ECS (Fargate)                         |
| IaC                  | Terraform                                 |
| CI/CD                | GitHub Actions                            |
| Container Registry   | AWS ECR                                   |
| Database             | AWS RDS (PostgreSQL)                      |
| Secrets Management   | AWS SSM / Secrets Manager (Optional)      |
| Networking           | VPC, Subnets, NAT Gateway, Internet GW    |

---

## ✅ Prerequisites

- [Docker](https://www.docker.com/)
- [Terraform](https://developer.hashicorp.com/terraform/install)
- AWS CLI configured (`aws configure`)
- GitHub repository (for source code & workflow)

---


---

## 🚀 Deployment Steps

### 1. Dockerize the Medusa App

Ensure your Dockerfile is at the root and builds your Medusa backend:

```Dockerfile
FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
CMD ["npm", "run", "start"]
```
### 2.Infrastructure Deployment (Terraform)
Step into the Terraform directory:
```
cd terraform
```
Initialize Terraform:
```
terraform init
```
Review and apply the infrastructure:
```
terraform apply
```
