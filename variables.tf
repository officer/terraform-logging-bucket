variable "region" {
  description = "Region"
  type = "string"
}


variable "namespace" {
  description = "Name space for bucket"
  type = "string"
}

variable "transition_days" {
  description   = "Days for transition to STANDARD_IA"
  type          = number
  default       = 30
}

variable "expiration_days" {
  description   = "Days for expiration"
  type          = number
  default       = 90
}


variable "tags" {
  description = "tags"
  type = "map"
  default = {
      "Resource": "Logging-bucket"
  }
}


