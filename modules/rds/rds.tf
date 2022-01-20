variable "environment" {}
variable "rds_instance_class" {}
variable "rds_allocated_storage" {}
variable "rds_engine" {}
variable "rds_db_name" {}
variable "rds_access_username" {}
variable "rds_access_password" {}



resource "aws_db_instance" "database" {
    allocated_storage = "${var.rds_allocated_storage}"
    engine = "${var.rds_engine}"
    instance_class = "${var.rds_instance_class}"
    name = "${var.rds_db_name}"
    username = "${var.rds_access_username}"
    password = "${var.rds_access_password}"

    tags = {
        Name = "${var.rds_db_name}"
        Environment = "${var.environment}"
    }
}
