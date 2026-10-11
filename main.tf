resource "coder_env" "envs" {
  for_each = var.envs

  agent_id       = each.value.agent_id
  name           = each.value.name
  merge_strategy = each.value.merge_strategy
  value          = each.value.value
}

