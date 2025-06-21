provider aws {
    region = var.region
}

resource "aws_instance" "web" {
  ami           = "var.ami_id"
  instance_type = "var.instance_type"
}

terraform {
  backend "s3" {
    bucket = "kaizen-bubusaran"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}
variable region {}
variable ami_id {}
variable instance_type {}


