terraform {
  required_version = "~> 1.11.0"
  required_providers {
    launchdarkly = {
      source  = "launchdarkly/launchdarkly"
      version = "~> 2.25.0"
    }
  }
}