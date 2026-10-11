variable "firestore_documents" {
  description = <<EOT
Map of firestore_documents, attributes below
Required:
    - collection
    - document_id
    - fields
Optional:
    - database
    - deletion_policy
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    collection      = string
    document_id     = string
    fields          = string
    database        = optional(string)
    deletion_policy = optional(string)
    project         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.firestore_documents : (
        can(jsondecode(v.fields))
      )
    ])
    error_message = "must be valid JSON"
  }
}

