
variable "bucket-name" {
    type = string
    default = "demo-storage-tfcloud"
  
}

variable "storage_class" {
  type = string
  default = "STANDARD"
}

variable "storage-location" {
  type = string
  default = "asia-south1"
}