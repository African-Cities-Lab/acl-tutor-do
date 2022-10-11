resource "digitalocean_ssh_key" "ssh_key" {
  name       = var.ssh_key_name
  public_key = tls_private_key.ssh_key.public_key_openssh
}

data "template_file" "cloud-init-yaml" {
  template = file("${path.module}/files/cloud-init.yml")
  vars = {
    user                   = var.droplet_user
    init_ssh_public_key    = tls_private_key.ssh_key.public_key_openssh
    docker_compose_version = var.docker_compose_version
  }
}

resource "digitalocean_project" "do_project" {
  name        = var.do_project_name
  description = var.do_project_description
}
