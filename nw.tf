resource "aws_vpc" "vpc" {
    cidr_block = local.cidr_block_vpc
    tags = {
        Name = "myvpc"
    }
}
resource "aws_subnet" "subnet" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = local.cidr_block_subnet_public
    availability_zone = local.avs
    tags = {
        Name = "mysubnet"
    }
}
resource "aws_instance" "my_instance" {
	ami = var.ami
	instance_type = var.instance_type
    subnet_id = aws_subnet.subnet.id
	tags = {
		Name = var.instance_name	
	}
}