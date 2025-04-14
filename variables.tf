variable "LD_API_KEY" {
  type        = string
  description = "LaunchDarkly API access token"
  sensitive   = true
  default     = "<PROVIDE-YOUR-API-KEY>"
}