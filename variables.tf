# snapshot
variable "snapshot_name" {
  description = "Name of the resource policy to create"
  type        = string
}
variable "source_disk" {
  description = "A reference to the disk used to create this snapshot."
  type        = string
}
variable "snapshot_description" {
  description = "Description of disk snapshot"
  type        = string
}
variable "storage_locations" {
  description = "Cloud Storage bucket storage location of the snapshot (regional or multi-regional)."
  type        = list(string)
}
variable "labels" {
  description = "Labels to apply to this Snapshot."
  type        = map(string)
  default     = {}
}
variable "zone" {
  description = "A reference to the zone where the disk is hosted."
  type        = string
}
variable "project_id" {
  description = "The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
}
variable "kms_key_self_link" {
  type        = string
  description = "(optional) describe your variable"
  default     = ""
}