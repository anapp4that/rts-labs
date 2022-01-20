module ec2 {
    source = "./modules/ec2"

    environment = "${var.environment}"

    api_instance_name = "${var.api_instance_name}"
    api_instance_type = "${var.api_instance_type}"
    api_instance_ami = "${var.api_instance_ami}"

    client_instance_type = "${var.client_instance_type}"
    client_instance_name = "${var.client_instance_name}"
    client_instance_ami = "${var.client_instance_ami}"
}

module rds {
    source = "./modules/rds"

    environment = "${var.environment}"

    rds_instance_class = "${var.rds_instance_class}"
    rds_allocated_storage = "${var.rds_allocated_storage}"
    rds_engine = "${var.rds_engine}"
    rds_db_name = "${var.rds_db_name}"
    rds_access_username = "${var.rds_access_username}"
    rds_access_password = "${var.rds_access_password}"
}

module s3 {
    source = "./modules/s3"

    environment = "${var.environment}"
    bucket_name = "${var.bucket_name}"
}
