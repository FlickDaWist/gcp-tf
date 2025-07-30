resource "google_storage_bucket" "tf-bucket-148559" {
  name          = "tf-bucket-148559"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true

}
