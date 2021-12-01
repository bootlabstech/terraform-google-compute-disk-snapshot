//REQUIRED VARIABLES

variable "name" {
  description = "Name of the resource policy to create"
  type        = string
}
variable "source_disk" {
  description = "A reference to the disk used to create this snapshot."
  type        = string
}

//OPTIONAL VARIABLES

variable "description" {
  description = "Description of disk snapshot"
  type        = string
  default     = "The disk google disk snapshot for your project"
}
variable "storage_locations" {
  description = "Cloud Storage bucket storage location of the snapshot (regional or multi-regional)."
  type        = list(string)
  default     = ["us-central1"]
}
variable "labels" {
  description = "Labels to apply to this Snapshot."
  type        = map(string)
  default     = {environment = "dev"}
}
variable "zone" {
  description = "A reference to the zone where the disk is hosted."
  type        = string
  default     = "us-central1-a"
}
variable "project" {
  description = "The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
}


