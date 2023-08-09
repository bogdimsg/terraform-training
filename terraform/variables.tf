variable "file_assets" {
  type = map(string)
}

variable "bucket-name" {
    type = string
    default = "tt-bucket"
}

variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}