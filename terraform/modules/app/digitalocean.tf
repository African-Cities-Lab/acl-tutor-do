resource "digitalocean_droplet" "droplet" {
  name   = "${var.droplet_prefix}-${var.env}"
  image  = var.droplet_image
  region = var.droplet_region
  size   = var.droplet_size
  ssh_keys = [
    var.do_ssh_key_id
    # digitalocean_ssh_key.ssh_key.id
  ]

  user_data = var.droplet_user_data # data.template_file.cloud-init-yaml.rendered
}

resource "digitalocean_project_resources" "droplets" {
  project = var.do_project_id # digitalocean_project.do_project.id
  resources = [
    digitalocean_droplet.droplet.urn
  ]
}
