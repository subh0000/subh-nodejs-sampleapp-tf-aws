variable "aws_profile" {
  description = "AWS Profile name"
}

variable "aws_region" {
  description = "Region name where the instances should be deployed"
  default = "ap-southeast-1"
}

variable "aws_s3_read_policy_arn" {
  description = "IAM Policy to be attached to role"
  default = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}

variable "aws_ec2_instance_policy_arn" {
  description = "IAM Policy to be attached to role"
  default = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"
}

variable "aws_ec2_service_policy_arn" {
  description = "IAM Policy to be attached to role"
  default = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceRole"
}

variable "key_name" {
  description = "Key name to be used for SSH access"
}

variable "ecs_cluster_name" {
  description = "Name of the cluster"
}

variable "application_name" {
  description = "Name of the application"
}

variable "asg_configuration" {
  type = map
  description = "ASG Settings"
  default = {
    min_instances = "2"
    max_instances = "2"
  }
}

variable "ecs_configuration" {
  type = map
  description = "ECS Settings"
  default = {
    number_tasks = "1"
  }
}
