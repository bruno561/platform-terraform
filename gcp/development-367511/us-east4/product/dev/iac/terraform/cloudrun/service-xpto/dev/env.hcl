locals {
  environment = "dev"
  project     = "development-367511"
  region      = "us-east4"

  # variáveis específicas do ambiente
  labels = {
    environment = "dev"
    team        = "product"
  }
}
