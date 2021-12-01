resource "google_compute_snapshot" "disk_snapshot" {
  
  name                = var.name 
  source_disk         = var.source_disk
  description         = var.description
  storage_locations   = var.storage_locations
  labels              = var.labels
  zone                = var.zone
  project             = var.project


}