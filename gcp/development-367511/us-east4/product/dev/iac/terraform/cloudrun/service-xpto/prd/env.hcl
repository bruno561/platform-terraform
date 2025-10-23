locals {
  environment = "prd"
  project     = "development-367511" # ajuste para seu projeto PRD
  region      = "us-east4"

  labels = {
    environment = "prd"
    team        = "product"
  }
}
