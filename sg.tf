resource "aws_security_group" "elb-sg" {
  name 		= "elb-sg"
  vpc_id      	= var.vpc_id

  #Incoming traffic
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #replace it with your address
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #replace it with your address
  }

  #Outgoing traffic
  egress {
    from_port   = 0
    to_port     = "-1"
    protocol    = "0"
    cidr_blocks = ["0.0.0.0/0"] #replace it with your address
  }
}
