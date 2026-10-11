data "oci_data_safe_crypto_assessment_backup_sets" "data_safe_crypto_assessment_backup_sets_lookup" {
  for_each = var.data_safe_crypto_assessment_backup_sets_lookup

  compartment_id            = each.value.compartment_id
  access_level              = each.value.access_level
  assessment_id             = each.value.assessment_id
  assessment_type           = each.value.assessment_type
  backup_set_key            = each.value.backup_set_key
  compartment_id_in_subtree = each.value.compartment_id_in_subtree
  is_encrypted              = each.value.is_encrypted
  target_id                 = each.value.target_id
  target_ids                = each.value.target_ids

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

