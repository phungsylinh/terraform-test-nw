# locals {
#     cidr_block_vpc = "11.0.0.0/16"
#     cidr_block_subnet_public = ["11.0.1.0/24","11.0.2.0/24","11.0.3.0/24"]
#     cidr_block_subnet_private = ["11.0.101.0/24", "11.0.102.0/24", "11.0.103.0/24"]
#     avs = ["us-west-1a", "us-west-1b", "us-west-1c"]
# }

locals {
    cidr_block_vpc = "11.0.0.0/16"
    cidr_block_subnet_public = "11.0.1.0/24"
    cidr_block_subnet_private = "11.0.101.0/24"
    avs = "us-west-2a"
}
variable "ami" {
  type          = string
  default       = "ami-0d92ae3e9abaeaccc"
}

variable "instance_type" {
  type          = string
  default     = "t2.nano"
}

variable "instance_name" {
  description   = "Value of the Name tag for the EC2 instance"
  type          = string
  default       = "ExampleInstance"
}