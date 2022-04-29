terraform {
    required_providers {
        digitalocean = {
            source = "digitalocean/digitalocean"
        }
        kubernetes = {
            source = "hashicorp/kubernetes"
        }
        helm = {
            source = "hashicorp/helm"
        }
    }
}

provider "digitalocean" {
    token = var.digitalocean_token
}

provider "kubernetes" {
    host    = digitalocean_kubernetes_cluster.default_cluster.endpoint
    token   = digitalocean_kubernetes_cluster.default_cluster.kube_config[0].token
    cluster_ca_certificate = base64decode(
        digitalocean_kubernetes_cluster.default_cluster.kube_config[0].cluster_ca_certificate
    )
}

provider "helm" {
    kubernetes {
        host    = digitalocean_kubernetes_cluster.default_cluster.endpoint
        token   = digitalocean_kubernetes_cluster.default_cluster.kube_config[0].token
        cluster_ca_certificate = base64decode(
            digitalocean_kubernetes_cluster.default_cluster.kube_config[0].cluster_ca_certificate
        )
    }
}
    
