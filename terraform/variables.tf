variable "ami" {
  type = string
  description = "Ubuntu AMI ID in eu-west-3 Region"
  default = "ami-00983e8a26e4c9bd9"
}

variable "instance_type" {
  type = string
  description = "Instance type"
  default = "t2.micro"
}

variable "name_tag" {
  type = string
  description = "Name of the EC2 instance"
  default = "My_C2_Instance"
}

variable "configuration" {

  description = "The total configuration, List of Objects/Dictionary"

  default = [{}]

}

