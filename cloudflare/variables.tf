# variables.tf

variable "cl_dynamic_ip" {
  type        = string
  description = "Dynamic Centurylink IP that changes"
}

variable "cloudflare_account_id" {
  type        = string
  description = "Cloudflare account ID reqd as of 4.0"
}

variable "cloudflare_api_token" {
  type        = string
  description = "Cloudflare API token (not key!)"
}
