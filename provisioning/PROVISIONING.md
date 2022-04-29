Provisioning
---

This environment contains configurations for provisioning a single K8s cluster with DNS records and a load balancer on Digital Ocean infrastructure.

Configuration variables are defined in `variables.tf` and assigned values in `terraform.tfvars`.

Sensitive data can be assigned to variables using export:

```
# Terraform defaults to interpreting env-var values as literal strings
export TF_VAR_variable_name='S3Ns1T1V3D4Ta'
```

Unclear
---

- Does running `terraform init && terraform apply` in this environment overwrite or merge existing DNS records?
- Is it best practices to separate deployment from provisioning?

