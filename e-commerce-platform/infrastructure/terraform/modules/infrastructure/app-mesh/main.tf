provider "aws" {
  region  = var.region
}

resource "aws_appmesh_mesh" "ecommerce_mesh" {
  name = "ecommerce-mesh"
}

resource "aws_appmesh_virtual_node" "example_node" {
  name      = "example-node"
  mesh_name = aws_appmesh_mesh.ecommerce_mesh.name

  spec {
    listener {
      port_mapping {
        port     = 8080
        protocol = "http"
      }
    }

    service_discovery {
      dns {
        hostname = "example-node.local"
      }
    }
  }
}
