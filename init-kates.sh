#!/bin/bash

kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.8.0/cert-manager.yaml

chmod +x deploy-secrets.sh && ./deploy-secrets.sh

cd manifests

ls | grep staging | xargs -I pattern kubectl apply -f pattern
ls | grep prod | xargs -I pattern kubectl apply -f pattern
ls | grep yaml | awk '$0 !~ /prod/ & $0 !~ /staging/' | xargs -I pattern kubectl apply -f pattern

