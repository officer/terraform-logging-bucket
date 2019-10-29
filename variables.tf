variable "region" {
<<<<<<< HEAD
  description = "(Required) Region where S3 bucket will be at"
=======
  description = "(Required) Region"
>>>>>>> 41a5f516c204c26aba713b2ca2be236952f6e71f
  type = "string"
}

variable "namespace" {
<<<<<<< HEAD
  description = "(Required) Name space for bucket"
=======
  description = "(Optional) Name space for bucket default:log"
>>>>>>> 41a5f516c204c26aba713b2ca2be236952f6e71f
  type = "string"
  default = "log"
}

variable "transition_days" {
<<<<<<< HEAD
  description   = "(Optional) Days for transition to STANDARD_IA default is 30"
=======
  description   = "(Optional) Days for transition to STANDARD_IA default:30"
>>>>>>> 41a5f516c204c26aba713b2ca2be236952f6e71f
  type          = number
  default       = 30
}

variable "expiration_days" {
<<<<<<< HEAD
  description   = "(Optional) Days for expiration default is 90"
=======
  description   = "(Optional) Days for expiration default:90"
>>>>>>> 41a5f516c204c26aba713b2ca2be236952f6e71f
  type          = number
  default       = 90
}

variable "force_destroy" {
<<<<<<< HEAD
  description   = "(Optional) Whether delete all objects and force destroy default is false"
=======
  description   = "(Optional) Whether delete all objects and force destroy default: false"
>>>>>>> 41a5f516c204c26aba713b2ca2be236952f6e71f
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

