module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.30"
  subnet_ids      = data.aws_subnets.selected.ids
  vpc_id          = data.aws_vpc.selected.id

  eks_managed_node_groups = {
    default = {
      desired_size  = var.desired_capacity
      max_size      = var.max_size
      min_size      = var.min_size
      instance_types = [var.instance_type]
    }
  }
}

data "aws_vpc" "selected" {
  default = true
}

data "aws_subnets" "selected" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected.id]
  }
}
