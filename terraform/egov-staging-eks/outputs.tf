output "vpc_id" {
  value = module.network.vpc_id
}

output "private_subnets" {
  value = module.network.private_subnets
}

output "public_subnets" {
  value = module.network.public_subnets
}

output "master_nodes_sg_id" {
  value = module.network.master_nodes_sg_id
}

output "worker_nodes_sg_id" {
  value = module.network.worker_nodes_sg_id
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = module.eks.cluster_endpoint
}

output "kubectl_config" {
  description = "kubectl config as generated by the module."
  value       = module.eks.kubeconfig
}

output "config_map_aws_auth" {
  description = "A kubernetes configuration to authenticate to this EKS cluster."
  value       = module.eks.config_map_aws_auth
}

output "es_master_volume_ids" {
  value = "${module.es-master.volume_ids}"
}

output "es_data_volume_ids" {
  value = "${module.es-data-v1.volume_ids}"
}

output "zookeeper_volume_ids" {
  value = "${module.zookeeper.volume_ids}"
}

output "kafka_vol_ids" {
  value = "${module.kafka.volume_ids}"
}

output "deployer_secret_key_cmd" {
  value = "${map(module.iam_user_deployer.this_iam_access_key_id, module.iam_user_deployer.keybase_secret_key_decrypt_command)}"
}

output "admin_secret_key_cmd" {
  value = "${map(module.iam_user_admin.this_iam_access_key_id, module.iam_user_admin.keybase_secret_key_decrypt_command)}"
}

output "user_secret_key_cmd" {
  value = "${map(module.iam_user_user.this_iam_access_key_id, module.iam_user_user.keybase_secret_key_decrypt_command)}"
}