variable "base_domain" {
  description = "The base domain used for Ingresses."
  type        = string
  default     = null
}

variable "kubernetes_version" {
  description = "Specify which Kubernetes release to use."
  type        = string
  default     = "1.21.6"
}

variable "zone" {
  description = "The name of the zone to deploy the SKS cluster into."
  type        = string
}

variable "nodepools" {
  description = "The SKS node pools to create."
  type        = map(any)
  default     = null
}

variable "router_nodepool" {
  description = "The node to attach the NLB to."
  type        = string
  default     = null
}

variable "node_ports_world_accessible" {
  description = "Whether NodePort services should be accessible without IP restriction."
  type        = bool
  default     = true
}

variable "keycloak_users" {
  description = "List of keycloak users"
  type        = map(map(string))
  default = {}
}

variable "create_nlb" {
  description = "Whether to create an NLB"
  type        = bool
  default     = true
}
