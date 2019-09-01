resource "aws_s3_bucket" "logging_bucket" {
  region        = "${var.region}"
  bucket_prefix = "${var.namespace}-logging-"
  acl           = "log-delivery-write"
  force_destroy = true

  lifecycle_rule {
    id            = "expire for log"
    enabled       = true

    transition    {
        storage_class   = "STANDARD_IA"
        days            = "${var.transition_days}"
    }
    expiration    {
        days        = "${var.expiration_days}"
    }
  }
}