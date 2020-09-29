# CIDR block for the ssh rule
variable "ingress_cidr_blocks" {
  description = "List of IPv4 CIDR whitelist ranges to use for ssh ingress rule"
  default     = ["188.239.50.0/24"]
}
