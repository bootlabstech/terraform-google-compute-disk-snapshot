//REQUIRED VARIABLES

variable "name" {
  description = "Name of the disk-snapshot to create"
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
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "us-east1-b",
        "us-east1-c",
        "us-east1-d",
        "us-east4-c",
        "us-east4-b",
        "us-east4-a",
        "us-central1-c",
        "us-central1-a",
        "us-central1-f",
        "us-central1-b",
        "us-west1-b",
        "us-west1-c",
        "us-west1-a",
        "europe-west4-a",
        "europe-west4-b",
        "europe-west4-c",
        "europe-west1-b",
        "europe-west1-d",
        "europe-west1-c",
        "europe-west3-c",
        "europe-west3-a",
        "europe-west3-b",
        "europe-west2-c",
        "europe-west2-b",
        "europe-west2-a",
        "asia-east1-b",
        "asia-east1-a",
        "asia-east1-c",
        "asia-southeast1-b",
        "asia-southeast1-a",
        "asia-southeast1-c",
        "asia-northeast1-b",
        "asia-northeast1-c",
        "asia-northeast1-a",
        "asia-south1-c",
        "asia-south1-b",
        "asia-south1-a",
        "australia-southeast1-b",
        "australia-southeast1-c",
        "australia-southeast1-a",
        "southamerica-east1-b",
        "southamerica-east1-c",
        "southamerica-east1-a",
        "asia-east2-a",
        "asia-east2-b",
        "asia-east2-c",
        "asia-northeast2-a",
        "asia-northeast2-b",
        "asia-northeast2-c",
        "asia-northeast3-a",
        "asia-northeast3-b",
        "asia-northeast3-c",
        "asia-south2-a",
        "asia-south2-b",
        "asia-south2-c",
        "asia-southeast2-a",
        "asia-southeast2-b",
        "asia-southeast2-c",
        "australia-southeast2-a",
        "australia-southeast2-b",
        "australia-southeast2-c",
        "europe-central2-a",
        "europe-central2-b",
        "europe-central2-c",
        "europe-north1-a",
        "europe-north1-b",
        "europe-north1-c",
        "europe-west6-a",
        "europe-west6-b",
        "europe-west6-c",
        "northamerica-northeast1-a",
        "northamerica-northeast1-b",
        "northamerica-northeast1-c",
        "northamerica-northeast2-a",
        "northamerica-northeast2-b",
        "northamerica-northeast2-c",
        "southamerica-west1-a",
        "southamerica-west1-b",
        "southamerica-west1-c",
        "us-west2-a",
        "us-west2-b",
        "us-west2-c",
        "us-west3-a",
        "us-west3-b",
        "us-west3-c",
        "us-west4-a",
        "us-west4-b",
        "us-west4-c"
        ],
   "description":"The zone where the disk is hosted."
}
EOT
  type        = string
  default     = "asia-south1-a"
}
variable "project" {
  description = "The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
}
