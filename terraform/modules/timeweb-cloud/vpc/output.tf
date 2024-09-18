output "vpc_id" {
  description = "Id of the provisioned VPC"
  value       = twc_vpc.vpc.id
}