terraform {
  cloud {
    organization = "exaf-epfl"
    workspaces {
      name = "acl-tutor-do-meta"
    }
  }
}
