resource "aws_vpc" "vpc_challenge" {
    cidr_block              = "10.0.0.0/16"
    instance_tenancy        = "default"
    enable_dns_hostnames    = true
    enable_dns_support      = true
}

resource "aws_subnet" "subnet_pub_01_challenge" {
    vpc_id      = aws_vpc.vpc_challenge.id
    cidr_block  = "10.0.1.0/24"
}

resource "aws_subnet" "subnet_pri_01_challenge" {
    vpc_id      = aws_vpc.vpc_challenge.id
    cidr_block  = "10.0.2.0/24"
}

resource "aws_internet_gateway" "ig_challenge" {
    vpc_id = aws_vpc.vpc_challenge.id
}

resource "aws_route_table" "rt_01_challenge" {
    vpc_id  = aws_vpc.vpc_challenge.id

    route {
        cidr_block      = "0.0.0.0/0"
        gateway_id      = aws_internet_gateway.ig_challenge.id
    }
}

resource "aws_route_table_association" "rt_as_01_challenge" {
    subnet_id       = aws_subnet.subnet_pub_01_challenge.id
    route_table_id  = aws_route_table.rt_01_challenge.id
}
