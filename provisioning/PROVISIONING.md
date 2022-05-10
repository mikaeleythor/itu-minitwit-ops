Provisioning
---

This environment contains configurations for provisioning a single K8s cluster with DNS records and a load balancer on Digital Ocean infrastructure.

Configuration variables are defined in `variables.tf` and assigned values in `terraform.tfvars`.

Sensitive data can be assigned to variables using export:

```
# Terraform defaults to interpreting env-var values as literal strings

export TF_VAR_digitalocean_token='S3Ns1T1V3D4Ta'
export TF_VAR_top_level_domain='S3Ns1T1V3D4Ta'
export TF_VAR_cluster_name='S3Ns1T1V3D4Ta'
```

