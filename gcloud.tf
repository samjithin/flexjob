module "gcloud" {
  source  = "terraform-google-modules/gcloud/google"
  version = "~> 2.0"

  platform = "linux"
  additional_components = ["kubectl", "beta"]
  skip_download = "false"

  create_cmd_entrypoint  = "${path.cwd}/scripts/script.sh"
  #create_cmd_body        = "enable terraformlearning-284414"
  #destroy_cmd_entrypoint = "gcloud"
  #destroy_cmd_body       = "version"
}