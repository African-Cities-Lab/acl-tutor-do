resource "digitalocean_ssh_key" "ssh_key" {
  name       = var.ssh_key_name
  public_key = tls_private_key.ssh_key.public_key_openssh
}

resource "digitalocean_project" "do_project" {
  name        = var.do_project_name
  description = var.do_project_description
}

resource "digitalocean_domain" "domain" {
  name = var.domain_name
}

resource "digitalocean_project_resources" "domain" {
  project = digitalocean_project.do_project.id
  resources = [
    digitalocean_domain.domain.urn
  ]
}
