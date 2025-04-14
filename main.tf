# Configure the LaunchDarkly provider
provider "launchdarkly" {
  access_token = var.LD_API_KEY
}

resource "launchdarkly_custom_role" "tf_example_role" {
  key         = "tf-example-role"
  name        = "Example Terraform role"
  description = "Role description"
  base_permissions = "no_access"

  policy_statements {
    resources = [
      "proj/$${roleAttribute/project-key}"
    ]
    actions = [
      "viewProject"
    ]
    effect = "allow"
  }
}

resource "launchdarkly_team" "tf_example_team" {
  for_each = toset(var.squad_names)

  key         = "${each.key}-team"
  name        = "${each.key} team"
  description = "Team for ${each.key}"

  custom_role_keys = [
    "tf-example-role"
  ]

  role_attributes {
    key = "project-key"
    values = [each.key]
  }

  # ignore changes to team membership to avoid overwriting IDP assignments
  lifecycle {
    ignore_changes = [member_ids]
  }
}
