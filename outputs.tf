output "envs_id" {
  description = "Map of id values across all envs, keyed the same as var.envs except keys with no id are omitted"
  value       = { for k, v in coder_env.envs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "envs_agent_id" {
  description = "Map of agent_id values across all envs, keyed the same as var.envs except keys with no agent_id are omitted"
  value       = { for k, v in coder_env.envs : k => v.agent_id if v.agent_id != null && length(v.agent_id) > 0 }
}
output "envs_merge_strategy" {
  description = "Map of merge_strategy values across all envs, keyed the same as var.envs except keys with no merge_strategy are omitted"
  value       = { for k, v in coder_env.envs : k => v.merge_strategy if v.merge_strategy != null && length(v.merge_strategy) > 0 }
}
output "envs_name" {
  description = "Map of name values across all envs, keyed the same as var.envs except keys with no name are omitted"
  value       = { for k, v in coder_env.envs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "envs_value" {
  description = "Map of value values across all envs, keyed the same as var.envs except keys with no value are omitted"
  value       = { for k, v in coder_env.envs : k => v.value if v.value != null && length(v.value) > 0 }
}

