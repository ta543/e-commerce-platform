output "mesh_name" {
  description = "The name of the created App Mesh."
  value       = aws_appmesh_mesh.ecommerce_mesh.name
}

output "virtual_node_name" {
  description = "The name of the created App Mesh virtual node."
  value       = aws_appmesh_virtual_node.example_node.name
}
