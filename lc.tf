resource "aws_launch_template" "example" {
  name_prefix   = "example"
  image_id      = data.aws_ami.image.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.asg-key-pair.key_name
  user_data = filebase64("${path.module}/userdata.sh")
}