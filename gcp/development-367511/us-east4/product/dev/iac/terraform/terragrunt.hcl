remote_state {
  backend = "gcs"
  config = {
    project                = "development-367511"
    location               = "us-east4"
    skip_bucket_versioning = false
    bucket                 = "terraform-state-development-367511"
    prefix                 = "gcp/development-367511/us-east4/product/dev/iac/terraform/${path_relative_to_include()}/terraform.tfstate"
  }
}