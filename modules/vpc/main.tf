resource "aws_vpc" "serment"{
cidr_block = var.vpc_cidr

tags = {

name = "serment-vpc"

}
}

resource "aws_subnet" "public" {

vpc_id = aws_vpc.serment.id
cidr_block = var.public_subnet
map_public_ip_on_launch = true

tags = {

    name = "serment-public-serment"

}

}

resource "aws_subnet" "private" {

vpc_id = aws_vpc.serment.id
cidr_block = var.private_subnet
map_public_ip_on_launch = false

tags = {

    name = "serment_private_subnet"
}

}

resource "aws_internet_gateway" "igw" {

    vpc_id = aws_vpc.serment.id

    tags = {

     name = "serment_igw"

    }
}

resource "aws_route_table"  "public" {

vpc_id = aws_vpc.serment.id

route {

    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
}

tags = {

name = "serment_route_table"


}

}

resource "aws_route_table_association" "public" {

subnet_id = aws_subnet.public.id 
route_table_id = aws_route_table.public.id

}
