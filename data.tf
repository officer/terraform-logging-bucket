
data "aws_iam_policy_document" "bucket_policy" {
  statement {
      effect = "Allow"
      actions = "s3:PutObject"
      resources = [
          "${aws_s3_bucket.logging_bucket.arn}/*"
      ]
      principals {
        type = "AWS"
        identifiers = [
            "arn:aws:iam::${lookup(local.region_map, var.region, "127311923021")}:root"

        ]
      }
  }
}
