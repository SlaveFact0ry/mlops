terraform {
  backend "gcs" {
    bucket = "morise-kubeflow-terraformm"
    prefix = "infra/gcs"
  }
}
