module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.26.0"

  cluster_name    = "fabricio_eks"
  cluster_version = "1.31"

  cluster_endpoint_public_access           = true
  cluster_endpoint_private_access          = true
  enable_cluster_creator_admin_permissions = true
  vpc_id                                   = module.vpc.vpc_id
  subnet_ids                               = module.vpc.private_subnets

  eks_managed_node_groups = {
    eks_nodes = {
      min_size     = 1
      max_size     = 4
      desired_size = 2

      instance_type = ["t3a.small"]
    }
  }

}
