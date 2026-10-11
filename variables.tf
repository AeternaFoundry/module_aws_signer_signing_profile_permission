variable "signer_signing_profile_permissions" {
  description = <<EOT
Map of signer_signing_profile_permissions, attributes below
Required:
    - action
    - principal
    - profile_name
Optional:
    - profile_version
    - region
    - statement_id
    - statement_id_prefix
EOT

  type = map(object({
    action              = string
    principal           = string
    profile_name        = string
    profile_version     = optional(string)
    region              = optional(string)
    statement_id        = optional(string)
    statement_id_prefix = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.signer_signing_profile_permissions : (
        length(v.profile_name) >= 2 && length(v.profile_name) <= 64
      )
    ])
    error_message = "must be between 2 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.signer_signing_profile_permissions : (
        v.profile_version == null || (length(v.profile_version) >= 10 && length(v.profile_version) <= 10)
      )
    ])
    error_message = "must be between 10 and 10 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.signer_signing_profile_permissions : (
        v.statement_id == null || (can(regex("^[0-9A-Za-z_-]{0,64}$", v.statement_id)))
      )
    ])
    error_message = "must be alphanumeric with max length of 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.signer_signing_profile_permissions : (
        v.statement_id_prefix == null || (can(regex("^[0-9A-Za-z_-]{0,38}$", v.statement_id_prefix)))
      )
    ])
    error_message = "must be alphanumeric with max length of 38 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

