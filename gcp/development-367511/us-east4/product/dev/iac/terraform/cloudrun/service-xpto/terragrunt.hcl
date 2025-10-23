terraform {
  # Caminho local para o módulo clonado via checkout no workflow
  source = "${get_repo_root()}/modules/terraform-cloud-run-module//terraform-cloud-run-module"
}

locals {
  # lê o env.hcl que está em pastas pai
  env = read_terragrunt_config(find_in_parent_folders("env.hcl")).locals
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  project     = local.env.project
  region      = local.env.region
  environment = local.env.environment

  # repassa labels/vars específicas do ambiente para o módulo
  labels = local.env.labels

  # exemplo de variáveis do seu módulo
  service_name = "service-xpto"
  image        = "gcr.io/cloudrun/hello"
}
