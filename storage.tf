

resource "google_storage_bucket" "storage-tfcloud-pipeline" {
    name = var.bucket-name
    location = var.storage-location
    force_destroy = true
    storage_class = var.storage_class
    ##storage account conditional expression- if storage class is standard then create standard storage bucket, 
    #but if storage class is not standard then automatically change the configured storage bucket class with standard class
    #storage_class = var.storage_class == "STANDARD" ? "STANDARD" : "STANDARD"  
    
    /*
    retention_policy {
      retention_period = "432000"
    }
    
    */

    lifecycle_rule {
      condition {
        age = 3
      }

      action {
        type = "SetStorageClass"
        storage_class = "COLDLINE"
      } 
    }
}


resource "google_storage_bucket_object" "object-tfcloud-pipeline" {
    name = "bucket-tfcloud"
    bucket = google_storage_bucket.storage-tfcloud-pipeline.name
    content = "this bucket is created during Github-TFCloud-pipeline demo"
    
}


resource "google_storage_bucket_iam_member" "storage-iam-member" {
  bucket = google_storage_bucket.storage-tfcloud-pipeline.name
  role = "roles/storage.admin"
  member = "allUsers"

  
}


  





