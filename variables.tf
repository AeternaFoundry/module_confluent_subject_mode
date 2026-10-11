variable "subject_modes" {
  description = <<EOT
Map of subject_modes, attributes below
Required:
    - subject_name
Optional:
    - force
    - mode
    - rest_endpoint
    - credentials (block):
        - key (required)
        - secret (required)
    - schema_registry_cluster (block):
        - id (required)
EOT

  type = map(object({
    subject_name  = string
    force         = optional(bool)
    mode          = optional(string)
    rest_endpoint = optional(string)
    credentials = optional(object({
      key    = string
      secret = string
    }))
    schema_registry_cluster = optional(object({
      id = string
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

