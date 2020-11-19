//--------------------------------------------------------------------
// Variables
variable "s3_bucket_acceleration_status" = "Enabled"
variable "s3_bucket_bucket" = "aindenko"
variable "s3_bucket_request_payer" {}

//--------------------------------------------------------------------
// Modules
module "s3_bucket" {
  source  = "app.terraform.io/aindenko/s3-bucket/aws"
  version = "1.15.0"

  acceleration_status = "${var.s3_bucket_acceleration_status}"
  bucket = "${var.s3_bucket_bucket}"
  bucket_prefix = "aindenko"
 # policy = "${var.s3_bucket_policy}"
#  request_payer = "${var.s3_bucket_request_payer}"
}