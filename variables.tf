variable "namespace" {
  description = "The project namespace to use for unique resource naming"
  default     = "TEST"
  type        = string
}

variable "region" {
  description = "AWS region"
  default     = "eu-west-2"
  type        = string
}
variable "key_name" {
   type = string
}