output "firestore_documents_id" {
  description = "Map of id values across all firestore_documents, keyed the same as var.firestore_documents except keys with no id are omitted"
  value       = { for k, v in google_firestore_document.firestore_documents : k => v.id if v.id != null && length(v.id) > 0 }
}
output "firestore_documents_collection" {
  description = "Map of collection values across all firestore_documents, keyed the same as var.firestore_documents except keys with no collection are omitted"
  value       = { for k, v in google_firestore_document.firestore_documents : k => v.collection if v.collection != null && length(v.collection) > 0 }
}
output "firestore_documents_create_time" {
  description = "Map of create_time values across all firestore_documents, keyed the same as var.firestore_documents except keys with no create_time are omitted"
  value       = { for k, v in google_firestore_document.firestore_documents : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "firestore_documents_database" {
  description = "Map of database values across all firestore_documents, keyed the same as var.firestore_documents except keys with no database are omitted"
  value       = { for k, v in google_firestore_document.firestore_documents : k => v.database if v.database != null && length(v.database) > 0 }
}
output "firestore_documents_deletion_policy" {
  description = "Map of deletion_policy values across all firestore_documents, keyed the same as var.firestore_documents except keys with no deletion_policy are omitted"
  value       = { for k, v in google_firestore_document.firestore_documents : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "firestore_documents_document_id" {
  description = "Map of document_id values across all firestore_documents, keyed the same as var.firestore_documents except keys with no document_id are omitted"
  value       = { for k, v in google_firestore_document.firestore_documents : k => v.document_id if v.document_id != null && length(v.document_id) > 0 }
}
output "firestore_documents_fields" {
  description = "Map of fields values across all firestore_documents, keyed the same as var.firestore_documents except keys with no fields are omitted"
  value       = { for k, v in google_firestore_document.firestore_documents : k => v.fields if v.fields != null && length(v.fields) > 0 }
}
output "firestore_documents_name" {
  description = "Map of name values across all firestore_documents, keyed the same as var.firestore_documents except keys with no name are omitted"
  value       = { for k, v in google_firestore_document.firestore_documents : k => v.name if v.name != null && length(v.name) > 0 }
}
output "firestore_documents_path" {
  description = "Map of path values across all firestore_documents, keyed the same as var.firestore_documents except keys with no path are omitted"
  value       = { for k, v in google_firestore_document.firestore_documents : k => v.path if v.path != null && length(v.path) > 0 }
}
output "firestore_documents_project" {
  description = "Map of project values across all firestore_documents, keyed the same as var.firestore_documents except keys with no project are omitted"
  value       = { for k, v in google_firestore_document.firestore_documents : k => v.project if v.project != null && length(v.project) > 0 }
}
output "firestore_documents_update_time" {
  description = "Map of update_time values across all firestore_documents, keyed the same as var.firestore_documents except keys with no update_time are omitted"
  value       = { for k, v in google_firestore_document.firestore_documents : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

