#
# VPC Resources
#  * VPC
#  * Subnets
#  * Internet Gateway
#  * Route Table
#

resource "aws_vpc" "kubernetes" {
  cidr_block = "12.0.0.0/16"

  # Tagging
  tags = tomap({
    "Name" = "Kubernetes VPC",
    "kubernetes.io/cluster/${var.cluster-name}" = "shared",
    })
}

resource "aws_subnet" "kubernetes" {
  count = 2

  availability_zone = data.aws_availability_zones.available.names[count.index]
  cidr_block        = "12.0.${count.index}.0/24"
  vpc_id            = aws_vpc.kubernetes.id
  map_public_ip_on_launch = "true"

  # Tagging
  tags = tomap({
    "Name" = "Kubernetes VPC",
    "kubernetes.io/cluster/${var.cluster-name}" = "shared",
    })  
}
