resource "aws_instance" "example" {
     ami = "ami-02e136e904f3da870"
     instance_type = "t2.micro"
     user_data = file("ec2_userdata.sh")
     vpc_security_group_ids = [aws_security_group.ssh_access.id]
     tags = {
    		Name = "Terraform"
        }

provisioner "local-exec" {
    when    = create
    command = "echo aws_instance.example.private_ip >> private_ip.txt"
}


provisioner "local-exec" {
     when    = destroy
     command = "rm private_ip.txt"
    }
}

  resource "aws_security_group" "ssh_access" {
    name = "ssh-access-security-group"
    description = "Web Security Group"
    tags = {
       Name = "ssh-access-security-group"
       }
    ingress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
}
