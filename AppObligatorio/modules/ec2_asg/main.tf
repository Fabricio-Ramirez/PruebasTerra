
resource "aws_launch_template" "worker_template" {
  name_prefix   = "worker-template-"
  image_id      = var.ami_id
  instance_type = var.instance_type
  iam_instance_profile {
    name = var.iam_instance_profile
  }
  user_data = base64encode(<<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<html><h1>Hello from Worker Instance</h1></html>" > /var/www/html/index.html
              EOF
  )

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "Worker"
    }
  }
}

resource "aws_autoscaling_group" "worker_asg" {
  name                = "worker-asg"
  desired_capacity    = var.desired_capacity
  max_size            = var.max_size
  min_size            = var.min_size
  vpc_zone_identifier = [var.subnet_id]

  launch_template {
    id      = aws_launch_template.worker_template.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "Worker"
    propagate_at_launch = true
  }
}
