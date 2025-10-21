terraform {
  # Caminho local para o módulo clonado via checkout no workflow
  source = "${get_repo_root()}/modules/terraform-cloud-run-module//terraform-cloud-run-module"
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
