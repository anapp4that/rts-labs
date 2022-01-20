variable "environment" {
    type = string
}

variable "api_instance_type" {
    type = string
}

variable "api_instance_name" {
    type = string
}

variable "api_instance_ami" {
    type = string
}

variable "client_instance_type" {
    type = string
}

variable "client_instance_name" {
    type = string
}

variable "client_instance_ami" {
    type = string
}

variable "rds_instance_class" {
    type = string
}

variable "rds_allocated_storage" {
    type = number
}

variable "rds_engine" {
    type = string
}

variable "rds_db_name" {
    type = string
}

variable "rds_access_username" {
    type = string
}

variable "rds_access_password" {
    type = string
}

variable "bucket_name" {
    type = string
}
