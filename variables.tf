variable "region" {
  description = "(Required) Region where S3 bucket will be at"
  type = "string"
}

variable "namespace" {
  description = "(Required) Name space for bucket"
  type = "string"
}

variable "transition_days" {
  description   = "(Optional) Days for transition to STANDARD_IA default is 30"
  type          = number
  default       = 30
}

variable "expiration_days" {
  description   = "(Optional) Days for expiration default is 90"
  type          = number
  default       = 90
}

variable "force_destroy" {
  description   = "(Optional) Whether delete all objects and force destroy default is false"
  type          = "string"
  default       = "false"
}

variable "tags" {
  description = "tags"
  type = "map"
  default = {
      "Resource": "Logging-bucket"
  }
}


