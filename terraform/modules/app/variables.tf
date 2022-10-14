variable "env" {
  description = "Environment of the app, e.g., staging, production."
  type        = string
}

variable "ssh_key_name" {
  description = "Name of the SSH key in DigitalOcean."
  type        = string
}

variable "droplet_user" {
  description = "Name of the user created for the `digitalocean_droplet`."
  type        = string
}

variable "docker_compose_version" {
  description = "Docker compose version string."
  type        = string
}

variable "droplet_prefix" {
  description = "The prefix name of the `digitalocean_droplet`."
  type        = string
}

variable "droplet_image" {
  description = "Image of the `digitalocean_droplet`."
  type        = string
  default     = "ubuntu-22-04-x64"
}

variable "droplet_region" {
  description = "Region of the `digitalocean_droplet`."
  type        = string
  default     = "fra1"
}

variable "droplet_size" {
  description = "Size of the `digitalocean_droplet`."
  type        = string
  default     = "s-2vcpu-4gb"
}

variable "do_project_id" {
  description = "ID of the `digitalocean_project`."
  type        = string
}

variable "domain_name" {
  description = "Domain pointing to DigitalOcean name servers."
  type        = string
}

variable "a_record_name" {
  description = "Hostname of the A record to the LMS."
  type        = string
}

variable "gh_repo_name" {
  description = "Name of the `github_repository`."
  type        = string
}
