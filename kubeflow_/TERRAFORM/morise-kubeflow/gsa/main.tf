provider "google" {
  project = "toy-kubeflow-479211"
  region = "asia-northeast3"
}

resource "google_service_account" "my_service_account" {
  account_id    = "gsa-kubefloww"
  display_name  = "gsa-kubefloww"
}

resource "google_storage_bucket_iam_binding" "my_bucket_iam_binding" {
  bucket  = "morise-kubeflow-datasetss"
  roles   = "roles/storage.admin"

  members = [
    "serviceAccount:${google_service_account.my_service_account.email}"
  ]
}
resource "google_artifact_registry_repository_iam_binding" "gsa_writer_binding" {
  location      = "asia-northeast3"
  project       = "toy-kubeflow-479211"
  repository    = "morise-kubeflow-cr"
  role          = "roles/artifactregistry.writer"
  members       = [
    "serviceAccount:${google_service_account.my_service_account.email}"
  ]
}

