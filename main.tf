resource "google_firestore_document" "firestore_documents" {
  for_each = var.firestore_documents

  collection      = each.value.collection
  document_id     = each.value.document_id
  fields          = each.value.fields
  database        = each.value.database
  deletion_policy = each.value.deletion_policy
  project         = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

