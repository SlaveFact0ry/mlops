terraform {
  backend "gcs" {
    bucket = "morise-kubeflow-terraform"
    prefix = "infra/gcs"
  }
}
