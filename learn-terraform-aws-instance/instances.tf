module "instances_AUTH-API" {
  source = "./modules/instances/"
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  vpc_security_group_ids = [aws_security_group.sg_AUTH-API.id,aws_security_group.sg_SSH-22.id]
  key_name      = "KP-RampUp-LJH"

  tags = {
    Name        = "EC2-Rampup-AUTH-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }

  volume_tags = {
    Name        = "EC2-Rampup-AUTH-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

module "instances_FRONTEND" {
  source = "./modules/instances/"
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  vpc_security_group_ids = [aws_security_group.sg_FRONTEND.id,aws_security_group.sg_SSH-22.id]
  key_name      = "KP-RampUp-LJH"

  tags = {
    Name        = "EC2-Rampup-FRONTEND-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }

  volume_tags = {
    Name        = "EC2-Rampup-FRONTEND-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

module "instances_LOG-MESSAGE-PROCESSOR" {
  source = "./modules/instances/"
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  vpc_security_group_ids = [aws_security_group.sg_LOG-MESSAGE-PROCESSOR.id,aws_security_group.sg_SSH-22.id]
  key_name      = "KP-RampUp-LJH"

  tags = {
    Name        = "EC2-Rampup-LOG-MESSAGE-PROCESSOR-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }

  volume_tags = {
    Name        = "EC2-Rampup-LOG-MESSAGE-PROCESSOR-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

module "instances_TODOS-API" {
  source = "./modules/instances/"
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  vpc_security_group_ids = [aws_security_group.sg_TODOS-API.id,aws_security_group.sg_SSH-22.id]
  key_name      = "KP-RampUp-LJH"

  tags = {
    Name        = "EC2-Rampup-TODOS-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }

  volume_tags = {
    Name        = "EC2-Rampup-TODOS-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

module "instances_USERS-API" {
  source = "./modules/instances/"
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  vpc_security_group_ids = [aws_security_group.sg_USERS-API.id,aws_security_group.sg_SSH-22.id]
  key_name      = "KP-RampUp-LJH"

  tags = {
    Name        = "EC2-Rampup-USERS-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }

  volume_tags = {
    Name        = "EC2-Rampup-USERS-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

module "instances_REDIS-DB" {
  source = "./modules/instances/"
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  vpc_security_group_ids = [aws_security_group.sg_redis-db.id,aws_security_group.sg_SSH-22.id]
  key_name      = "KP-RampUp-LJH"

  tags = {
    Name        = "EC2-Rampup-REDIS-DB-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }

  volume_tags = {
    Name        = "EC2-Rampup-REDIS-DB-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}


