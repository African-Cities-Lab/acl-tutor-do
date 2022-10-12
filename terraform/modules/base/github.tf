# base repository
# resource "github_repository" "repo" {
#   name        = var.gh_repo_name # "doge-test"
#   description = "Test terraform setup for cookiecutter-django-doge."
#   visibility  = "public"

#   allow_merge_commit = true
#   auto_init          = true
#   gitignore_template = "Terraform"
#   license_template   = "gpl-3.0"
# }
data "github_repository" "repo" {
  name = var.gh_repo_name # "doge-test"
}


## Secrets
resource "github_actions_secret" "tf_api_token" {
  repository      = data.github_repository.repo.name
  secret_name     = "tf_api_token"
  plaintext_value = var.tf_api_token
}

resource "github_actions_secret" "ssh_key" {
  repository      = data.github_repository.repo.name
  secret_name     = "ssh_key"
  plaintext_value = tls_private_key.ssh_key.private_key_openssh
}

resource "github_actions_secret" "droplet_user" {
  repository      = data.github_repository.repo.name
  secret_name     = "droplet_user"
  plaintext_value = var.droplet_user
}

resource "github_actions_secret" "smtp_password" {
  repository      = data.github_repository.repo.name
  secret_name     = "smtp_password"
  plaintext_value = var.smtp_password
}

resource "github_actions_secret" "tutor_admin_password" {
  repository      = data.github_repository.repo.name
  secret_name     = "tutor_admin_password"
  plaintext_value = var.tutor_admin_password
}

resource "github_actions_secret" "tutor_admin_user" {
  repository      = data.github_repository.repo.name
  secret_name     = "tutor_admin_user"
  plaintext_value = var.tutor_admin_user
}

# # branches
# ## required branches
# # resource "github_branch" "main" {
# #   repository = github_repository.repo.name
# #   branch     = "main"
# # }

# resource "github_branch" "stage" {
#   repository = data.github_repository.repo.name
#   branch     = "stage"
# }

# resource "github_branch" "develop" {
#   repository = data.github_repository.repo.name
#   branch     = "develop"
# }

# ## default branch
# # resource "github_branch_default" "default" {
# #   repository = github_repository.repo.name
# #   branch     = github_branch.main.branch
# # }

# ## branch protection rules
# resource "github_branch_protection" "develop" {
#   repository_id = data.github_repository.repo.node_id

#   pattern = "develop"
#   # required_linear_history = "true"

#   required_status_checks {
#     strict   = true
#     contexts = ["build"]
#   }
# }

# resource "github_branch_protection" "stage" {
#   repository_id = data.github_repository.repo.node_id

#   pattern = "stage"
#   # required_linear_history = "true"

#   required_status_checks {
#     strict   = true
#     contexts = ["build-and-plan-stage"]
#   }
# }

# resource "github_branch_protection" "main" {
#   repository_id = data.github_repository.repo.node_id

#   pattern = "main"
#   # required_linear_history = "true"

#   required_status_checks {
#     strict   = true
#     contexts = ["build-and-plan-prod"]
#   }
# }
