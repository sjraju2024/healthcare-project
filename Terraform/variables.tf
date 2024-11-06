variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "public_az" {
  description = "Availability zone for the public subnet"
  type        = string
}

variable "private_az" {
  description = "Availability zone for the private subnet"
  type        = string
}

variable "cluster_name" {
  description = "EKS Cluster name"
  type        = string
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "repo_name" {
  description = "ECR repository name"
  type        = string
}
