#!/bin/bash

cd provisioning

# Run provisioning module
terraform init
terraform apply

cd ..
