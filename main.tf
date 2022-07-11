resource "google_compute_snapshot" "snapshot" {
  name              = var.snapshot_name
  source_disk       = var.source_disk
  description       = var.snapshot_description
  storage_locations = var.storage_locations
  labels            = var.labels
  zone              = var.zone
  project           = var.project_id
  snapshot_encryption_key {
    kms_key_self_link = var.kms_key_self_link
  }
}