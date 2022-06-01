#!/bin/bash

cd manifests

# Apply all manifests
ls | grep yaml | xargs -I pattern kubectl apply -f pattern

cd ..
kubectl rollout restart deployment/backend-deploy
kubectl rollout restart deployment/frontend-deploy
