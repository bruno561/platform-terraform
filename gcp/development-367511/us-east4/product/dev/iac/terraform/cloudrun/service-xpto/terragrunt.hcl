terraform {
  # HTTPS limpo — sem token na URL
  source = "git::https://github.com/bruno561/terraform-cloud-run-module.git//?ref=main"
  # ou por commit SHA (melhor prática):
  # source = "git::https://github.com/bruno561/terraform-cloud-run-module.git//?ref=<COMMIT_SHA>"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  project_id   = "development-367511"     # seu projeto fictício (ou o real do lab)
  location     = "us-east4"
  service_name = "service-xpto"
  image        = "gcr.io/cloudrun/hello"
  members      = ["allUsers"]      # só para teste rápido; depois remova/política adequada
}