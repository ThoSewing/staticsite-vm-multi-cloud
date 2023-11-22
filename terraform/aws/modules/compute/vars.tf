variable "rede_id" {}
variable "subnet_id" {}
variable "rede_cidr" {}

variable "ami" {
    type    = string
    default = "ami-02e136e904f3da870"
    validation {
        condition     = length(var.ami) > 4 && substr(var.ami, 0, 4) == "ami-"
        error_message = "The ami value must be a valid AMI id, starting with \"ami-\"."
    }
}

variable "ami2" {
    type    = string
    default = "ami-02e136e904f3da870"
    validation {
        condition     = length(var.ami) > 4 && substr(var.ami, 0, 4) == "ami-"
        error_message = "The ami value must be a valid AMI id, starting with \"ami-\"."
    }
}

variable "ec2_lb_name" {
    type    = string
    default = "ec2-lb-name"
}

variable "ec2_lb_tg_name" {
    type    = string
    default = "ec2-lb-tg-name"
}

variable "ec2_lb_tg_protocol" {
    type    = string
    default = "HTTP"
}

variable "ec2_lb_tg_port" {
    type    = number
    default = 80
}

variable "ec2_lb_listener_protocol" {
    type    = string
    default = "HTTP"
}

variable "ec2_lb_listener_port" {
    type    = number
    default = 80
}

variable "ec2_lb_listener_action_type" {
    type    = string
    default = "forward"
}