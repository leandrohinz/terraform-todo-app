data "aws_instance" "server_existent" {
  instance_id = "i-00b1876990e52aae9"
  filter {
    name   = "image-id"
    values = ["ami-085284d24fe829cd0"]
  }
  filter {
    name   = "tag:Name"
    values = ["API-Instance-CL"]
  }
}