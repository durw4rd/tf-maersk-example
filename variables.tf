variable "LD_API_KEY" {
  type        = string
  description = "LaunchDarkly API access token"
  sensitive   = true
  default     = "<add your API access token>"
}

variable "squad_names" {
  type    = list(string)
  default = ["reds", "blues", "greens"] 
}