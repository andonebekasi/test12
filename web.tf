provider "aws" {
access_key = "AKIA54BSDYOJGBOMLKWT"
secret_key = "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"
region = "us-east-1"
}

# Resource configuration
resource "aws_instance" "web" {
ami = "ami-0a887e401f7654935"
instance_type = "t2.medium"
key_name = "andi"
user_data = "${file("install_apache.sh")}"
tags = {
Name = "web"
}
}

# Copies the sshd_config file to /etc/ssh/sshd_config
#  resource "remote exec" {
#    source      = "/home/cloud_user/aws/aku/test/sshd_config"
#    destination = "/home/ec2-user/"
#  
#connection {
#      user     = "root"
#    }
#  }
resource "aws_key_pair" "terraform_ec2_key" {
  key_name = "andi"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAIBuFuz2f+GPJPEhm4smOcNHV/eJIqxhVzhHCBrvbkHUt2HfJVRPlYQYnkVJyD43iQwDA4gDnVNjJq9HLWO7OE1tA0hecwGib7MWsWsaq+ZcK/8qPGnJ//pF9aAvGV6UIqZLdxOVLSDX3ekLsyQ8I4HOwd9ahjk19EmLjztc0G2A2Q== rsa-key-20200113"
//  public_key = "${file("terraform_ec2_key.pub")}"
}


