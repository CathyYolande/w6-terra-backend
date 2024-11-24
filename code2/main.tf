resource "aws_lightsail_instance" "l1" {
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  name              = "my-server1"
  key_pair_name     = "terra-key"
  user_data         = file("setup.sh")
  tags = {
    "env" = "dev"
    team  = "devops"
  }

}
