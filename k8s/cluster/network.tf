module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.14.0"

  name = "Ecs-vpc"
  cidr = "10.0.0.0/16"

  azs             = var.azs
  private_subnets = var.subnets_private
  public_subnets  = var.subnets_public

  enable_vpn_gateway = true
  enable_nat_gateway = true

}

resource "aws_security_group" "ecs_sc" {
  name        = "sc_ecs_tasks"
  description = "Security Groups for Ecs tasks"
  vpc_id      = module.vpc.vpc_id

  tags = {
    Name = "allow_tls"
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
