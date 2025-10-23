terraform {
  # Caminho local para o módulo clonado via checkout no workflow
  source = "${get_repo_root()}/modules/terraform-cloud-run-module//terraform-cloud-run-module"
}

locals {
  # antes: env = read_terragrunt_config(find_in_parent_folders("env.hcl")).locals
  env = read_terragrunt_config("${get_terragrunt_dir()}/dev/env.hcl").locals
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  project_id     = local.env.project_id


  # repassa labels/vars específicas do ambiente para o módulo
  service_labels = local.env.service_labels

  # exemplo de variáveis do seu módulo
  service_name = "service-xpto"
  image        = "gcr.io/cloudrun/hello"
}
