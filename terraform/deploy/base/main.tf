module "base" {
  source = "github.com/martibosch/acl-tutor-do//terraform/modules/base"

  ssh_key_name           = var.ssh_key_name
  do_project_name        = var.do_project_name
  do_project_description = var.do_project_description
  domain_name            = var.domain_name
  gh_repo_name           = var.gh_repo_name
  tf_api_token           = var.tf_api_token
  smtp_password          = var.smtp_password
  tutor_admin_password   = var.tutor_admin_password
  tutor_admin_user       = var.tutor_admin_user
}
