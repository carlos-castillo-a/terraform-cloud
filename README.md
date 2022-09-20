# Azure DevOps integration with Terraform Cloud
This repository will hold the contentsof .tf configuration files for different projects and cloud providers. The goal is to automate deployments using Terraform Cloud.

## AWS
The following is a list of projects connected to AWS:
- [aws0001](./AWS/aws0001/): Creating an S3 bucket

### Order of operations 
1. Create `dev` Branch for project (ex: `aws0000-dev`)
2. Create Terraform Cloud `dev` Workspace tied to branch (example `aws0001-dev`)
    - Make sure to configure "Terraform Working Directory as the path to project (ex: `AWS/aws0000/`)
3. Create Terraform Cloud `prod` Workspace tied to `main` directory
    - Make sure to configure "Terraform Working Directory as the path to project (ex: `AWS/aws0000/`)
4. Test Configuration in dev, once successful, merge changes to `main`


**Workflow**  

![](./Attachments/ado-tf-aws-workflow.png)

## Azure
Azure projects are TBD.