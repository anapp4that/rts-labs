variable "environment" {}
variable "api_instance_name" {}
variable "api_instance_type" {}
variable "api_instance_ami" {}
variable "client_instance_type" {}
variable "client_instance_name" {}
variable "client_instance_ami" {}

resource "aws_instance" "api" {

    instance_type = "${var.api_instance_type}"
    ami = "${var.api_instance_ami}"

    tags = {
        Name = "${var.api_instance_name}"
        Environment = "${var.environment}"
    }
}

resource "aws_instance" "client"{

    instance_type = "${var.client_instance_type}"
    ami = "${var.client_instance_ami}"

    tags = {
        Name = "${var.client_instance_name}"
        Environment = "${var.environment}"
    }
}
