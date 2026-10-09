variable "aws_region" {
  description = "AWS region for the Nexus infrastructure"
  type        = string
  default     = "eu-central-1"
}

variable "admin_ip" {
  description = "Public IP address of the administrator (CIDR format)"
  type        = string
  default     = "212.93.150.80/32"
}

variable "ssh_public_key_path" {
  description = "Path to the local SSH public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "ssh_private_key_path" {
  description = "Path to the local SSH private key (for Ansible inventory)"
  type        = string
  default     = "~/.ssh/id_rsa"
}

# --- Environment variables---

variable "environment" {
  description = "Deployment environment (staging, production)"
  type        = string
  default     = "staging"
}

variable "instance_type" {
  description = "EC2 instance size"
  type        = string
  default     = "t3.small"
}

variable "node_name" {
  description = "Name tag for the EC2 node"
  type        = string
  default     = "nexus-k3s-staging"
}

variable "disk_size_gb" {
  description = "Root disk volume size in GB"
  type        = number
  default     = 30
}
