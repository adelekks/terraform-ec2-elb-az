variable "aws_region" {
  default = "us-west-2"
}

variable "profile" {
  default = "default"
}

variable "ec2_ami" {
  default = "ami-0dda7e535b65b6469"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ec2_keypair" {
  default = "Baston"
}

variable "ec2_count" {
  type = number
  default = "2"
}

variable "environment" {
  default = "dev"
}

variable "product" {
  default = "qa"
}
variable "vpc_id" {
  default = "vpc-0734470d38fe7ce13"
}
variable "subnets" {
   type    = list
   #default = ["subnet-0f6d60903e6e64c20","subnet-0f39247c50e5dbd4d"]
   default = ["subnet-09c5f0e548c1348b5", "subnet-08b54f28020c2aa8e"]

}
