terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.region

}

module "SG_AUTH-API" {
  source         = "./security_groups"
  sg_name        = "SG-AUTH-API-RAMPUP-LJH"
  sg_description = "Security Group AUTH-API"
  vpc_id         = "vpc-0d2831659ef89870c"

  ingress_rules = [
    {
      from_port   = 8000
      to_port     = 8000
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

}

module "SG_FRONTEND" {
  source         = "./security_groups"
  sg_name        = "SG-FRONTEND-RAMPUP-LJH"
  sg_description = "Security Group FRONTEND"
  vpc_id         = "vpc-0d2831659ef89870c"

  ingress_rules = [
    {
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

}

module "SG_LOG-MESSAGE-PROCESSOR" {
  source         = "./security_groups"
  sg_name        = "SG-LOG-MESSAGE-PROCESSOR-RAMPUP-LJH"
  sg_description = "Security Group LOG-MESSAGE-PROCESSOR"
  vpc_id         = "vpc-0d2831659ef89870c"

  ingress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

}

module "SG_TODOS-API" {
  source         = "./security_groups"
  sg_name        = "SG-TODOS-API-RAMPUP-LJH"
  sg_description = "Security Group TODOS-API"
  vpc_id         = "vpc-0d2831659ef89870c"

  ingress_rules = [
    {
      from_port   = 8082
      to_port     = 8082
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

}

module "SG_USERS-API" {
  source         = "./security_groups"
  sg_name        = "SG-USERS-API-RAMPUP-LJH"
  sg_description = "Security Group USERS-API"
  vpc_id         = "vpc-0d2831659ef89870c"

  ingress_rules = [
    {
      from_port   = 8083
      to_port     = 8083
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

}

module "SG_REDIS-DB" {
  source         = "./security_groups"
  sg_name        = "SG-REDIS-DB-RAMPUP-LJH"
  sg_description = "Security Group REDIS-DB"
  vpc_id         = "vpc-0d2831659ef89870c"

  ingress_rules = [
    {
      from_port   = 6379
      to_port     = 6379
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

}


module "SG_SSH-22" {
  source         = "./security_groups"
  sg_name        = "SG-SSH-22-RAMPUP-LJH"
  sg_description = "Security Group SSH-22"
  vpc_id         = "vpc-0d2831659ef89870c"

  ingress_rules = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

}

module "SG_JENKINS" {
  source         = "./security_groups"
  sg_name        = "SG-JENKINS-RAMPUP-LJH"
  sg_description = "Security Group JENKINS"
  vpc_id         = "vpc-0d2831659ef89870c"

  ingress_rules = [
    {
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

}

module "instances_AUTH-API" {
  source        = "./instances"
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  sg_id         = module.SG_AUTH-API.security_group_id
  sg_common     = module.SG_SSH-22.security_group_id
  key_name      = "KP-RampUp-LJH"

  instance_name = "EC2-Rampup-AUTH-API-LJH"
  #user_data = "${file("script.sh")}"

}

module "instances_FRONTEND" {
  source        = "./instances"
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  sg_id         = module.SG_FRONTEND.security_group_id
  sg_common     = module.SG_SSH-22.security_group_id
  key_name      = "KP-RampUp-LJH"

  instance_name = "EC2-Rampup-FRONTEND-LJH"
  #user_data = "${file("script.sh")}"

}

module "instances_LOG-MESSAGE-PROCESSOR" {
  source        = "./instances"
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  sg_id         = module.SG_LOG-MESSAGE-PROCESSOR.security_group_id
  sg_common     = module.SG_SSH-22.security_group_id
  key_name      = "KP-RampUp-LJH"

  instance_name = "EC2-Rampup-LOG-MESSAGE-PROCESSOR-LJH"
  #user_data = "${file("script.sh")}"

}

module "instances_TODOS-API" {
  source        = "./instances"
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  sg_id         = module.SG_TODOS-API.security_group_id
  sg_common     = module.SG_SSH-22.security_group_id
  key_name      = "KP-RampUp-LJH"

  instance_name = "EC2-Rampup-TODOS-API-LJH"
  #user_data = "${file("script.sh")}"

}

module "instances_USERS-API" {
  source        = "./instances"
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  sg_id         = module.SG_USERS-API.security_group_id
  sg_common     = module.SG_SSH-22.security_group_id
  key_name      = "KP-RampUp-LJH"

  instance_name = "EC2-Rampup-USERS-API-LJH"
  #user_data = "${file("script.sh")}"

}

module "instances_REDIS-DB" {
  source        = "./instances"
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  sg_id         = module.SG_REDIS-DB.security_group_id
  sg_common     = module.SG_SSH-22.security_group_id
  key_name      = "KP-RampUp-LJH"

  instance_name = "EC2-Rampup-REDIS-DB-LJH"
  #user_data = "${file("script.sh")}"

}

module "instances_JENKINS" {
  source        = "./instances"
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.small"
  subnet_id     = "subnet-0088df5de3a4fe490"
  sg_id         = module.SG_JENKINS.security_group_id
  sg_common     = module.SG_SSH-22.security_group_id
  key_name      = "KP-RampUp-LJH"
  volume_size   = 10

  instance_name = "EC2-Rampup-JENKINS-LJH"
  #user_data = "${file("script.sh")}"

}