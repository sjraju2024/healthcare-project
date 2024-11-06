output "cluster_name" {
  value = aws_eks_cluster.main.name
}

output "node_group_name" {
  value = aws_eks_node_group.worker_group.node_group_name
}
