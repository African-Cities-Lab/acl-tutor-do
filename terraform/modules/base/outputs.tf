output "do_ssh_key_name" {
  description = "Name of the `digitalocean_ssh_key`."
  value       = digitalocean_ssh_key.ssh_key.name
}

output "do_project_id" {
  description = "ID of the `digitalocean_project`."
  value       = digitalocean_project.do_project.id
}

output "domain_name" {
  description = "Name of the `digitalocean_domain`."
  value       = digitalocean_domain.domain.name
}

output "gh_repo_name" {
  description = "Name of the `github_repository`."
  value       = data.github_repository.repo.name
}

output "ssh_key" {
  description = "SSH private key."
  value       = tls_private_key.ssh_key
}
