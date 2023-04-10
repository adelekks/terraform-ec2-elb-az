# Create a new load balancer
resource "aws_elb" "ram" {
  name		        = "qa-elb"
#  availability_zones    = ["us-west-2a", "us-west-2b"]
#  vpc_id 		= var.vpc_id 
#  count			 = 2
  security_groups = ["${aws_security_group.elb-sg.id}"]
  subnets =  ["subnet-09c5f0e548c1348b5", "subnet-08b54f28020c2aa8e"]
  #subnets = ["subnet-0f6d60903e6e64c20","subnet-0f39247c50e5dbd4d"]
#  count                      =  2
  instances                  = aws_instance.ec2.*.id
  cross_zone_load_balancing  = true
  idle_timeout               = 40

  listener {
    instance_port       = 80
    instance_protocol   = "http"
    lb_port	        = 80
    lb_protocol	        = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout		= 5
    target		= "HTTP:80/"
    interval		= 30
  }

// ELB attachments
#  count			     =  2 
#  instances		     = aws_instance.ec2.*.id
#  cross_zone_load_balancing  = true
#  idle_timeout		     = 40
  tags = {
    Name = "daemo-elb"
  }
}
