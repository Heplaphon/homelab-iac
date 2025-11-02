provider "incus" {
  generate_client_certificates = true
  accept_remote_certificate    = true
  default_remote               = "bifur"

  remote {
    name    = "bifur"
    address = "https://192.168.50.40:8443"
    token   = var.incus_token
  }
}
