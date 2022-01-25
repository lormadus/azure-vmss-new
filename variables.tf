variable "region" {
	default = "koreacentral"
}

variable "rg" {
	default = "user30-vmss-rg"
}

variable "vnet" {
	default = "user30-vnet"
}

variable "ip_address" {
	default = ["30.0.0.0/16"]
}

variable "subnet1" {
	default = "user30-subnet1"
}

variable "subnet_ip_address" {
	default = ["30.0.1.0/24"]
}

variable "pip" {
	default = "user30-pip"
}

variable "pipdnsname" {
	default = "user30vmssdemo"
}

variable "nsg" {
	default = "user30-nsg"
}

variable "lb" {
	default = "user30-lb"
}

variable "lb_pip" {
	default = "user30-lbpip"
}

variable "lb_bep" {
	default = "user30-bep"
}
