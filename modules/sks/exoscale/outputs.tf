output "base_domain" {
  value = local.base_domain
}

output "keycloak_users" {
  value     = { for username, infos in local.keycloak_user_map : username => lookup(infos, "password") }
  sensitive = true
}

output "keycloak_admin_password" {
  description = "The password of Keycloak's admin user."
  value       = data.kubernetes_secret.keycloak_admin_password.data != null ? data.kubernetes_secret.keycloak_admin_password.data.ADMIN_PASSWORD : null
  sensitive   = true
}

output "nlb_ip_address" {
  value = var.create_nlb ? exoscale_nlb.this[0].ip_address : null
}

output "cluster_security_group_id" {
  description = "Security group ID attached to the SKS nodepool instances."
  value       = module.cluster.this_security_group_id
}

output "kubernetes_host" {
  value = local.kubernetes.host
}

output "kubernetes_cluster_ca_certificate" {
  value = local.kubernetes.cluster_ca_certificate
}

output "kubernetes_client_key" {
  value = local.kubernetes.client_key
}

output "kubernetes_client_certificate" {
  value = local.kubernetes.client_certificate
}
