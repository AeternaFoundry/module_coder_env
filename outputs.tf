output "envs_id" {
  description = "Map of id values across all envs, keyed the same as var.envs"
  value       = { for k, v in coder_env.envs : k => v.id }
}
output "envs_agent_id" {
  description = "Map of agent_id values across all envs, keyed the same as var.envs"
  value       = { for k, v in coder_env.envs : k => v.agent_id }
}
output "envs_merge_strategy" {
  description = "Map of merge_strategy values across all envs, keyed the same as var.envs"
  value       = { for k, v in coder_env.envs : k => v.merge_strategy }
}
output "envs_name" {
  description = "Map of name values across all envs, keyed the same as var.envs"
  value       = { for k, v in coder_env.envs : k => v.name }
}
output "envs_value" {
  description = "Map of value values across all envs, keyed the same as var.envs"
  value       = { for k, v in coder_env.envs : k => v.value }
}

