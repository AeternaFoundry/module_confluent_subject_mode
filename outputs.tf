output "subject_modes_id" {
  description = "Map of id values across all subject_modes, keyed the same as var.subject_modes except keys with no id are omitted"
  value       = { for k, v in confluent_subject_mode.subject_modes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "subject_modes_credentials" {
  description = "Map of credentials values across all subject_modes, keyed the same as var.subject_modes except keys with no credentials are omitted"
  value       = { for k, v in confluent_subject_mode.subject_modes : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "subject_modes_force" {
  description = "Map of force values across all subject_modes, keyed the same as var.subject_modes except keys with no force are omitted"
  value       = { for k, v in confluent_subject_mode.subject_modes : k => v.force if v.force != null }
}
output "subject_modes_mode" {
  description = "Map of mode values across all subject_modes, keyed the same as var.subject_modes except keys with no mode are omitted"
  value       = { for k, v in confluent_subject_mode.subject_modes : k => v.mode if v.mode != null && length(v.mode) > 0 }
}
output "subject_modes_rest_endpoint" {
  description = "Map of rest_endpoint values across all subject_modes, keyed the same as var.subject_modes except keys with no rest_endpoint are omitted"
  value       = { for k, v in confluent_subject_mode.subject_modes : k => v.rest_endpoint if v.rest_endpoint != null && length(v.rest_endpoint) > 0 }
}
output "subject_modes_schema_registry_cluster" {
  description = "Map of schema_registry_cluster values across all subject_modes, keyed the same as var.subject_modes except keys with no schema_registry_cluster are omitted"
  value       = { for k, v in confluent_subject_mode.subject_modes : k => one(v.schema_registry_cluster) if v.schema_registry_cluster != null && length(v.schema_registry_cluster) > 0 }
}
output "subject_modes_subject_name" {
  description = "Map of subject_name values across all subject_modes, keyed the same as var.subject_modes except keys with no subject_name are omitted"
  value       = { for k, v in confluent_subject_mode.subject_modes : k => v.subject_name if v.subject_name != null && length(v.subject_name) > 0 }
}

