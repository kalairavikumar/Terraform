# Creating the autoscaling group within us-east-1a availability zone
resource "aws_autoscaling_group" "kalai-asg" {
  # Defining the availability Zone in which AWS EC2 instance will be launched
  #  availability_zones        = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  # Specifying the name of the autoscaling group
  name = "kalai-asg"
  # Defining the maximum number of AWS EC2 instances while scaling
  max_size = 3
  # Defining the minimum number of AWS EC2 instances while scaling
  min_size = 3
  # Grace period is the time after which AWS EC2 instance comes into service before checking health.
  health_check_grace_period = 30
  # The Autoscaling will happen based on health of AWS EC2 instance defined in AWS CLoudwatch Alarm 
  health_check_type = "EC2"
  # force_delete deletes the Auto Scaling Group without waiting for all instances in the pool to terminate
  force_delete = true
  # Defining the termination policy where the oldest instance will be replaced first 
  termination_policies = ["OldestInstance"]
  # Scaling group is dependent on autoscaling launch configuration because of AWS EC2 instance configurations
  launch_configuration = aws_launch_configuration.kalai-lc.id
  vpc_zone_identifier  = [aws_subnet.my_subnets[0].id, aws_subnet.my_subnets[1].id, aws_subnet.my_subnets[2].id]
}
