terraform {
  backend "s3" {
    bucket = "terraform-state-01-2019"
    key    = "workspace/class1"
  }
}
