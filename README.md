Deploying
---

This repo allows for provisioning and deploying our application with a few short commands.


Setuo environment variables
```
export TF_VAR_digitalocean_token='S3Ns1T1V3D4Ta'
export TF_VAR_top_level_domain='S3Ns1T1V3D4Ta'
export TF_VAR_cluster_name='S3Ns1T1V3D4Ta'
```

Run scripts
```
chmod +x ./provisioning.sh && ./provisioning.sh 
chmod +x ./save-kubeconfig.sh && ./save-kubeconfig.sh 
chmod +x ./init-kates.sh && ./init-kates.sh
```

Notes - Things to remember
Provisioning
1. Remember to delete domain on DO if exists. 
2. Variables are strings, so they need quotations 
3. No special characters in cluster_name

Deploying Application
1. ClusterIssuer annotation mush be in the same namespace as kubernetes.io/ingress.class: "nginx" (minitwit-ig.yaml)
2. Get certmanager for cluster ->
  kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.8.0/cert-manager.yaml
3. We need staging and production cluster issuers and staging and production minitwit-ig manifests
4. Order of applying matters so we created a new script -> init-kates.sh

Flushing database - cat dump_2022-06-01.sql | kubectl exec -i $( kubectl get pods | awk '$1 ~ /db-deploy/ {print $1}' ) -- psql -U sa -d Minitwit


