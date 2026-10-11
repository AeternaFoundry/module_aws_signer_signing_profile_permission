output "signer_signing_profile_permissions_id" {
  description = "Map of id values across all signer_signing_profile_permissions, keyed the same as var.signer_signing_profile_permissions"
  value       = { for k, v in aws_signer_signing_profile_permission.signer_signing_profile_permissions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "signer_signing_profile_permissions_action" {
  description = "Map of action values across all signer_signing_profile_permissions, keyed the same as var.signer_signing_profile_permissions"
  value       = { for k, v in aws_signer_signing_profile_permission.signer_signing_profile_permissions : k => v.action if v.action != null && length(v.action) > 0 }
}
output "signer_signing_profile_permissions_principal" {
  description = "Map of principal values across all signer_signing_profile_permissions, keyed the same as var.signer_signing_profile_permissions"
  value       = { for k, v in aws_signer_signing_profile_permission.signer_signing_profile_permissions : k => v.principal if v.principal != null && length(v.principal) > 0 }
}
output "signer_signing_profile_permissions_profile_name" {
  description = "Map of profile_name values across all signer_signing_profile_permissions, keyed the same as var.signer_signing_profile_permissions"
  value       = { for k, v in aws_signer_signing_profile_permission.signer_signing_profile_permissions : k => v.profile_name if v.profile_name != null && length(v.profile_name) > 0 }
}
output "signer_signing_profile_permissions_profile_version" {
  description = "Map of profile_version values across all signer_signing_profile_permissions, keyed the same as var.signer_signing_profile_permissions"
  value       = { for k, v in aws_signer_signing_profile_permission.signer_signing_profile_permissions : k => v.profile_version if v.profile_version != null && length(v.profile_version) > 0 }
}
output "signer_signing_profile_permissions_region" {
  description = "Map of region values across all signer_signing_profile_permissions, keyed the same as var.signer_signing_profile_permissions"
  value       = { for k, v in aws_signer_signing_profile_permission.signer_signing_profile_permissions : k => v.region if v.region != null && length(v.region) > 0 }
}
output "signer_signing_profile_permissions_statement_id" {
  description = "Map of statement_id values across all signer_signing_profile_permissions, keyed the same as var.signer_signing_profile_permissions"
  value       = { for k, v in aws_signer_signing_profile_permission.signer_signing_profile_permissions : k => v.statement_id if v.statement_id != null && length(v.statement_id) > 0 }
}
output "signer_signing_profile_permissions_statement_id_prefix" {
  description = "Map of statement_id_prefix values across all signer_signing_profile_permissions, keyed the same as var.signer_signing_profile_permissions"
  value       = { for k, v in aws_signer_signing_profile_permission.signer_signing_profile_permissions : k => v.statement_id_prefix if v.statement_id_prefix != null && length(v.statement_id_prefix) > 0 }
}

