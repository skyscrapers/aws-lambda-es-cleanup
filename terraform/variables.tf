variable "prefix" {
  default = null
  type    = string
}

variable "schedule" {
  default = "cron(0 3 * * ? *)"
  type    = string
}

variable "sns_alert" {
  default = null
  type    = string
}

variable "es_endpoint" {
  type = string
}

variable "index" {
  type = string
}

variable "delete_after" {
  type = number
}

variable "index_format" {
  type = string
}

variable "python_version" {
  default = "2.7"
  type    = string
}

variable "lambda_logs_retention_in_days" {
  default = 30
  type    = number
}

variable "subnet_ids" {
  description = "Subnet IDs you want to deploy the lambda in. Only fill this in if you want to deploy your Lambda function inside a VPC."
  type        = list(string)
  default     = []
}

variable "elasticsearch_sg_id" {
  description = "Security group ID of the AWS elasticsearch service. Only fill this in if you deploy Lambda function inside a VPC."
  default     = null
  type        = string
}

