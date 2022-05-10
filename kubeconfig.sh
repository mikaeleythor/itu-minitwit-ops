#!/bin/bash

# MAKE SURE TO HAVE CORRECT ENV VARS SET

# SETUP DIGITALOCEAN
doctl auth init -t $TF_VAR_digitalocean_token

doctl kubernetes cluster kubeconfig save $TF_VAR_cluster_name

cd manifests
