variable digitalocean_token {
    description = "The API token from your Digital Ocean control panel"
    type        = string
    sensitive   = true
}

variable cluster_name {
    description = "The name of the cluster to create"
    type        = string
}

variable region {
    description = "The Digital Ocean region slug for where to create resources"
    type        = string
    default     = "lon1"
}

variable top_level_domains {
    description = "Top level domains to create records and pods for"
    type        = list(string)
}

variable min_nodes {
    description = "The minimum number of nodes in the default pool"
    type        = number
    default     = 3
}

variable max_nodes {
    description = "The maximum number of nodes in the default pool"
        type        = number
        default     = 4
}

variable default_node_size {
    description = "The default Digital Ocean node slug for each node in the default pool"
    type        = string
    default     = "s-1vcpu-2gb"
}
