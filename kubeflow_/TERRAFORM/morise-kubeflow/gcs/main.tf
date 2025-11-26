provider "google" {
  project = "toy-kubeflow-479211"
  region = "asia-northeast3"
}

resource "google_storage_bucket" "my_bucket" {
  name      = "morise-kubeflow-datasets"
  location  = "asia-northeast3"

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}
