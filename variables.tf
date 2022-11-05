#
# Variables Configuration
#

variable "cluster-name" {
  default = "terraform-eks-kubernetes"
  type    = string
}

variable "kubernetes_version" {
  default = "1.23"
  type    = string
}

variable "kubeconfig_name" {
  description = "Override the default name used for items kubeconfig."
  type        = string
  default     = ""
}