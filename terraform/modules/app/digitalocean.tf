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

data "digitalocean_domain" "domain" {
  name = var.domain_name
}

resource "digitalocean_record" "a" {
  domain = data.digitalocean_domain.domain.name
  name   = var.a_record_name # "courses"
  type   = "A"
  value  = digitalocean_droplet.droplet.ipv4_address
}

resource "digitalocean_record" "cname" {
  domain = data.digitalocean_domain.domain.name
  name   = "*.${var.a_record_name}" # "*.courses"
  type   = "CNAME"
  value  = "${var.a_record_name}.${var.domain_name}."
}
