# Configure the LaunchDarkly provider
provider "launchdarkly" {
  access_token = var.LD_API_KEY
}

resource "launchdarkly_custom_role" "tf_example_role" {
  key         = "tf-example-role"
  name        = "Example Terraform role"
  description = "Role description"
  base_permissions  = "reader"

  policy_statements {
    resources = [
      "application/*"
    ]
    actions = [
      "*"
    ]
    effect = "allow"
  }
}