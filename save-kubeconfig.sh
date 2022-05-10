#!/bin/bash

# Authenticate via DO token
doctl auth init -t $TF_VAR_digitalocean_token
doctl kubernetes cluster kubeconfig save $TF_VAR_cluster_name

