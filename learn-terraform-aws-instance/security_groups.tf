module "SG-AUTH-API" {
  source = "./modules/security_groups"
  name        = "SG-AUTH-API"
  description = "Security Group AUTH-API"
  vpc_id      = "vpc-0d2831659ef89870c"

  ingress {
    from_port   = 8000
    to_port     = 8000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "SG-EC2-Rampup-AUTH-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

module "SG-FRONTEND" {
  source = "./modules/security_groups"
  name        = "SG-FRONTEND"
  description = "Security Group FRONTEND"
  vpc_id      = "vpc-0d2831659ef89870c"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "SG-EC2-Rampup-FRONTEND-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

module "SG-LOG-MESSAGE-PROCESSOR" {
  source = "./modules/security_groups"
  name        = "SG-LOG-MESSAGE-PROCESSOR"
  description = "Security Group LOG-MESSAGE-PROCESSOR"
  vpc_id      = "vpc-0d2831659ef89870c"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "SG-EC2-Rampup-LOG-MESSAGE-PROCESSOR-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

module "SG-TODOS-API" {
  source = "./modules/security_groups"
  name        = "SG-TODOS-API"
  description = "Security Group TODOS-API"
  vpc_id      = "vpc-0d2831659ef89870c"

  ingress {
    from_port   = 8082
    to_port     = 8082
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "SG-EC2-Rampup-TODOS-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

module "SG-USERS-API" {
  source = "./modules/security_groups"
  name        = "SG-USERS-API"
  description = "Security Group USERS-API"
  vpc_id      = "vpc-0d2831659ef89870c"

  ingress {
    from_port   = 8083
    to_port     = 8083
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "SG-EC2-Rampup-USERS-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

module "SG-REDIS-DB" {
  source = "./modules/security_groups"
  name        = "SG-redis-db"
  description = "Security Group redis-db"
  vpc_id      = "vpc-0d2831659ef89870c"

  ingress {
    from_port   = 6379
    to_port     = 6379
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "SG-EC2-Rampup-redis-db-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

resource "aws_security_group" "sg_SSH-22" {
  name        = "SG-SSH-22"
  description = "Security Group SSH-22"
  vpc_id      = "vpc-0d2831659ef89870c"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "SG-EC2-Rampup-SSH-22-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}