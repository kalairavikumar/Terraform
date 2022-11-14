# Creating the autoscaling launch configuration that contains AWS EC2 instance details
resource "aws_launch_configuration" "kalai-lc" {
  # Defining the name of the Autoscaling launch configuration
  name = "kalai_config"
  # Defining the image ID of AWS EC2 instance
  image_id = "ami-05624874da655edeb"
  # Defining the instance type of the AWS EC2 instance
  instance_type = "m5a.2xlarge"
  # Defining the Key that will be used to access the AWS EC2 instance
  key_name                    = "test1"
  security_groups             = ["${aws_security_group.ssh-allowed.id}"]
  associate_public_ip_address = true
}
