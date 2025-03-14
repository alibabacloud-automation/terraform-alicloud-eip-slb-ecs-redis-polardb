output "this_ecs_id" {
  description = "The ID of the ECS instance."
  value       = module.example.this_ecs_id
}

output "this_redis_instance_id" {
  description = "The ID of the MongoDB instance. "
  value       = module.example.this_redis_instance_id
}