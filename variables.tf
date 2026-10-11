variable "data_safe_crypto_assessment_backup_sets_lookup" {
  description = <<EOT
Map of data_safe_crypto_assessment_backup_sets_lookup, attributes below
Required:
    - compartment_id
Optional:
    - access_level
    - assessment_id
    - assessment_type
    - backup_set_key
    - compartment_id_in_subtree
    - is_encrypted
    - target_id
    - target_ids
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id            = string
    access_level              = optional(string)
    assessment_id             = optional(string)
    assessment_type           = optional(string)
    backup_set_key            = optional(string)
    compartment_id_in_subtree = optional(bool)
    is_encrypted              = optional(bool)
    target_id                 = optional(string)
    target_ids                = optional(list(string))
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

