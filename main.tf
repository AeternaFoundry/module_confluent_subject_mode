resource "confluent_subject_mode" "subject_modes" {
  for_each = var.subject_modes

  subject_name  = each.value.subject_name
  force         = each.value.force
  mode          = each.value.mode
  rest_endpoint = each.value.rest_endpoint

  dynamic "credentials" {
    for_each = each.value.credentials != null ? [each.value.credentials] : []
    content {
      key    = credentials.value.key
      secret = credentials.value.secret
    }
  }

  dynamic "schema_registry_cluster" {
    for_each = each.value.schema_registry_cluster != null ? [each.value.schema_registry_cluster] : []
    content {
      id = schema_registry_cluster.value.id
    }
  }
}

