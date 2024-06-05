

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

variable "vpc-name" {
  type = string
  default = "vpc-tfcloud-pipeline"
}

variable "subnet_name" {
  type = string
  default = "subnet-tfcloud-pipeline"
}

variable "ip_cidr_range" {
  type = string
  default = "192.168.110.0/24"
}

