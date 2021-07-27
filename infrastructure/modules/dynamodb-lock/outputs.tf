output "lock_dynamo" {
  description = "The DynamoDB table containing the lock information for Terraform"
  value       = var.dynamodb_table
}

