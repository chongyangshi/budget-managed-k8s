// We can fetch these variables using data.google_container_cluster, but this
// is not available at init time and hence cannot be used to initialise our
// Kubernetes provider. Therefore the user has to supply them manually in
// ingress.auto.tfvars
variable "cluster_endpoint" {
  type        = string
  description = "The endpoint including https:// schema of the GKE cluster created in the 'cluster' module"
  default     = "172.16.0.2" // It should be this by default in the 172.16.0.0/28 range
}

variable "cluster_ca_cert" {
  type        = string
  description = "The Base64-encoded cluster CA cert of the GKE cluster created in the 'cluster' module"
}
