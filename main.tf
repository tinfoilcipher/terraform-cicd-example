terraform {
    backend "s3" {
        bucket       = "tinfoilterraformbackend"
        key          = "terraform.tfstate"
        region       = "eu-west-2"
    }
}

data "aws_ami" "tinfoil" {
    most_recent = true
    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
    }
    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
    owners = ["099720109477"] # Canonical
}

resource "aws_instance" "tinfoil" {
    ami                     = "${data.aws_ami.tinfoil.id}"
    instance_type           = "t2.micro"
    subnet_id               = "subnet-0dae8a8faf6253e62"
    count                   =  1
    tags = {
        Resource = "Compute"
    }
}
