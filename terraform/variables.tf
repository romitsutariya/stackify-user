variable "db-username" {
  description = "The username for the MySQL database instance."
  type        = string
}

variable "db-password" {
  description = "The password for the MySQL database instance."
  type        = string
  sensitive   = true
}