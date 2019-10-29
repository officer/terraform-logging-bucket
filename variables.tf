variable "region" {
  description = "(Required) Region where S3 bucket will be at"

  type = "string"
}

variable "namespace" {
  description = "(Optional) Name space for bucket default:log"
  type = "string"
  default = "log"
}

variable "transition_days" {
  description   = "(Optional) Days for transition to STANDARD_IA default:30"
  type          = number
  default       = 30
}

variable "expiration_days" {
  description   = "(Optional) Days for expiration default:90"
  type          = number
  default       = 90
}

variable "force_destroy" {
  description   = "(Optional) Whether delete all objects and force destroy default: false"
  type          = "string"
  default       = "false"
}

variable "tags" {
  description = "(Optional) tags"
  type = "map"
  default = {
      "Resource": "Logging-bucket"
  }
}

variable "alb" {
  description = "(Optional) Whether this bucket is for ALB or not. default: false"
  type = "string"
  default = "false"
  
}

