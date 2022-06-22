#!/bin/bash

cd manifests

# Apply all manifests
ls | grep pvc.yaml | xargs -I pattern kubectl apply -f pattern
ls | grep pv.yaml | xargs -I pattern kubectl apply -f pattern
ls | grep cm.yaml | xargs -I pattern kubectl apply -f pattern
ls | grep deploy | xargs -I pattern kubectl apply -f pattern
ls | grep service | xargs -I pattern kubectl apply -f pattern
ls | grep deploy | xargs -I pattern kubectl rollout restart deployment/pattern
