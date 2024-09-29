variable "region" {
    description = "AWS region"
    default     = "sa-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for Subnet"
  default     =  "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability zone"
  default     =  "sa-east-1"
}

variable "master_ami" {
  description = "AMI for master node"
  default     = "ami-0abc1234efgh5678" # Update with actual AMI ID 
}

variable "worker_ami" {
  description = "AMI for worker nodes"
  default     = "ami-0abcd1234rfgh5678" # Update with actual AMI ID 
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro" 
}

variable "worker_count" {
    description = "Number of worker nodes"
    default     = 5 
}