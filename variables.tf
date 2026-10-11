variable "envs" {
  description = <<EOT
Map of envs, attributes below
Required:
    - agent_id
    - name
Optional:
    - merge_strategy
    - value
EOT

  type = map(object({
    agent_id       = string
    name           = string
    merge_strategy = optional(string)
    value          = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.envs : (
        can(regex("^[a-zA-Z_][a-zA-Z0-9_]*$", v.name))
      )
    ])
    error_message = "must be a valid environment variable name"
  }
  validation {
    condition = alltrue([
      for k, v in var.envs : (
        v.merge_strategy == null || (contains(["replace", "append", "prepend", "error"], v.merge_strategy))
      )
    ])
    error_message = "must be one of: \"replace\", \"append\", \"prepend\", \"error\""
  }
}

