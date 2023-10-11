# Learn Terraform
The purpose of this repository is to track code changes as I learn terraform.

## Prerequisites
- Terraform
- kubectl
- helm
- helm provider for Terraform

## Instructions
- configure helm provider for terraform and initialize terraform.
```
    terraform init
```
- Deploy Jenkins via Helm Chart
- Apply Terraform Configuration
```
    terraform plan
    terraform apply
```    
### After deploying jenkins in kubernetes, we can access it our computer by:
####     Retrieve the LoadBalancer IP or hostname:

```
    kubectl get svc jenkins --namespace jenkins
```

####  Copy the IP address or hostname from the EXTERNAL-IP column and paste it into your web browser.



