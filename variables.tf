variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AMIS" {
  type = "map"

  default = {
    us-east-1 = "ami-0ff8a91507f77f867"
    us-east-2 = "ami-0b59bfac6be064b78"
    us-west-2 = "ami-a0cfeed8"
  }
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "terrakey.pub"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "terrakey"
}

variable "INSTANCE_USERNAME" {
  default = "ec2-user"
}

variable "HTTP_PORT" {
  default = "443"
}
